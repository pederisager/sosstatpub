***** Analysis syntax for Social Status size/distance experiment *****

** Retrieve dataset from xlsx.
GET
  FILE='D:\Dropbox\jobb\Publication\sosstatexp.git\Experiment_3\alldata_merged.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.


** Structuring the dataset for analysis.

* May be no need to delete variables.
*   DELETE VARIABLES

   * Merge RT into one variable. Same for ACC, taking care that missing value is not coded the same as an incorrect response.
   recode Comparison_RT (missing = 0).
   recode Comparison1_RT (missing = 0).
   execute. 

   compute RTall = Comparison_RT + Comparison1_RT.
   execute.

   recode Comparison_ACC (missing = -1).
   recode Comparison1_ACC (missing = -1).
   execute. 

  compute ACCall = (Comparison_ACC + Comparison1_ACC) +1.
missing values ACCall (-1). 
execute.

   * Delete variables that are now merged.
   DELETE VARIABLES
   Comparison.ACC
   Comparison1.ACC
   Comparison2.ACC
   Comparison.RT
   Comparison1.RT
   Comparison2.RT.

*  Give more intuitive names to some variables. 
   RENAME VARIABLES
   (ACCall = Accuracy)
   (RTall = RT)
   (HierarcyList = Hierarchy)
   (Higher = PickHigher)
   (HierType = HierarchyName)
   (Trial = HierarchyOrder)
   (BlockList1 = Block1).
execute.

* Fix gender code. Now "Male" = 1 or 0.
   recode
   Sex (2=0) (1=1) into Male.
   execute.


** Creating filter

  *Create practice-trial filter.
   Recode praclist (missing = 0).

   compute Practice = 0.
   if (praclist > 0) Practice = 1.
   execute.

   *Creates measure of the sum of accurate trials per ppt per hierarchy.
   AGGREGATE
     /OUTFILE=* MODE=ADDVARIABLES
     /BREAK=Subject Hierarchy
     /ACC_Corr_sum=SUM(Accuracy)
     /acc_n=N.

   *Creates filter for accurate trials less than 80% of total trials per ppt per hierarchy.
   compute blockok = 1.
   execute.
   if (acc_corr_sum / acc_n < .80) blockok = 0.
   execute.

   *Creates measure of accepted blocks per ppt.
   AGGREGATE
     /OUTFILE=* MODE=ADDVARIABLES
     /BREAK=Subject
     /blockok_sum=sum(blockok)
     /acc_block=N.

   *Creates filter for ppts with less than 50% correct blocks.
   compute pptok = 1.
   execute.
   if (blockok_sum / acc_block < .50) pptok = 0.
   execute.

   * Statistics allow you to examine the acuracy and reaction time distributions.
   GRAPH
     /HISTOGRAM(NORMAL)=RTall.

   FREQUENCIES VARIABLES=ACCall
     /ORDER=ANALYSIS.

   CROSSTABS
     /TABLES=Subject BY ACCall
     /FORMAT=AVALUE TABLES
     /CELLS=COUNT ROW
     /COUNT ROUND CELL.

   XGRAPH CHART=[POINT] BY RTall[s]
     /DISPLAY DOT=ASYMMETRIC.
   
   GRAPH
     /HISTOGRAM(NORMAL)=RTall.

* Creates the order of presentation.
compute PresentOrder = 0.
if praclist > 0 presentorder = 1.
If block1 > 0 presentorder = 2.
if block2 > 0 presentorder = 3.
execute.

   *Computes the actual filtering variable.
   compute rtfilter = 1.
   execute.

   if praclist > 0 rtfilter = 0.

   if presentorder = 1 rtfilter = 0.
   execute.

   if accall = 0 rtfilter = 0.
   execute.

   if rtall < 400 rtfilter = 0.
   if rtall > 5000 rtfilter = 0.
   execute.

   if (blockok = 0) rtfilter = 0.
   if (pptok = 0) rtfilter = 0.
   execute.

 * Apply filter.  
   use all.
   filter by rtfilter.
   execute.

*Turn filter off.
filter off.


 ** test of fit to normal distribution.

   XGRAPH CHART=[POINT] BY RTall[s]
     /DISPLAY DOT=ASYMMETRIC.
   GRAPH
     /HISTOGRAM(NORMAL)=RTall.

   NPAR TESTS
     /K-S(NORMAL)=RTall
     /MISSING ANALYSIS.

   *Logtransform the RT variable to make the distribution more normaldistribution-like. But use actual RT data for the thesis.
   compute RTln = ln(rtall).
   execute.

   *test of fit to normal distribution.
   XGRAPH CHART=[POINT] BY RTln[s]
     /DISPLAY DOT=ASYMMETRIC.
   GRAPH
     /HISTOGRAM(NORMAL)=RTln.

   NPAR TESTS
     /K-S(NORMAL)=RTln
     /MISSING ANALYSIS.


   






