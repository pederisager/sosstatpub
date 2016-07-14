***** Analysis syntax for Social Status size/distance experiment *****

* Import data from csv file.See matlab script (eprime_qualtrics_filemerge.m) for manipulations already done to the dataset.  .
GET DATA  /TYPE=TXT
  /FILE="D:\Dropbox\jobb\Publication\sosstatexp.git\Experiment_3\alldata_merged.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ExperimentName A39
  Subject F3.0
  Session F1.0
  Clock_Information A497
  DataFile_Basename A45
  Display_RefreshRate A6
  ExperimentVersion A9
  Group F1.0
  RandomSeed F10.0
  RuntimeCapabilities A12
  RuntimeVersion A10
  RuntimeVersionExpected A10
  SessionDate A10
  SessionStartDateTimeUtc A19
  SessionTime A17
  StudioVersion A10
  Block F1.0
  CorrKey1 A3
  CorrKey2 A3
  Higher F1.0
  InstrInput A6
  Procedure_Block A9
  Running_Block A11
  Sessionlist F1.0
  Sessionlist_Cycle F1.0
  Sessionlist_Sample F1.0
  Trial F1.0
  Description1 A154
  Description2 A163
  Description3 A137
  Description4 A162
  Description5 A141
  Description6 A133
  Description7 A107
  HierarchyType A6
  HierarcyList F1.0
  HierarcyList_Cycle F1.0
  HierarcyList_Sample F1.0
  HierType A23
  Power1 A9
  Power2 A6
  Power3 A5
  Power4 A6
  Power5 A8
  Power6 A5
  Power7 A5
  Procedure_Trial A8
  Running_Trial A12
  WordListMed A3
  WordListRel A3
  SubTrial F3.0
  Blocklist1 A3
  Blocklist1_Cycle A3
  Blocklist1_Sample A3
  Comparison_ACC A3
  Comparison_CRESP A3
  Comparison_DurationError A7
  Comparison_OnsetDelay A3
  Comparison_OnsetTime A7
  Comparison_OnsetToOnsetTime A3
  Comparison_RESP A1
  Comparison_RT A5
  Comparison_RTTime A7
  Comparison1_ACC A3
  Comparison1_CRESP A3
  Comparison1_DurationError A7
  Comparison1_OnsetDelay A3
  Comparison1_OnsetTime A7
  Comparison1_OnsetToOnsetTime A3
  Comparison1_RESP A1
  Comparison1_RT A4
  Comparison1_RTTime A7
  CorResp A3
  Description A163
  Hierarchy A3
  HierDescriptList A3
  HierDescriptList_Cycle A3
  HierDescriptList_Sample A3
  PairDist A3
  PairHeight A3
  PracList A3
  PracList_Cycle A3
  PracList_Sample A3
  Procedure_SubTrial A15
  Running_SubTrial A16
  Stim1 A9
  Stim2 A9
  Word1 A8
  Word2 A9
  ResponseID A17
  ResponseSet A20
  Name A9
  ExternalDataReference A3
  EmailAddress A3
  IPAddress A13
  Status F1.0
  StartDate A19
  EndDate A19
  Finished F1.0
  FoydalRekkefolge A3
  Blokkrekkef_lge F1.0
  DuVilN_BliStiltNoenSp_rsm_lOmDegSelvOgDinOpplevelseAvInnholdetI F1.0
  Alder F2.0
  Kj_nn F1.0
  ErDuH_yrehendtEllerVenstrehendt F1.0
  ErNorskDittMorsm_l F1.0
  ErDuMedlemAvDenKatolskeKirke F1.0
  IdentifisererDuDegSomKatolikk F1.0
  ErDuMedlemAvEtAnnetKristentTrossamfunn F1.0
  IdentifisererDuDegSomKristen F1.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__1____lm F3.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__2____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__3____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__4____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__5____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__6____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIMiddelalderhierarkiet__7____lm F1.0
  HvorKjentVarDuMedMiddelalderhierarkietF_rDenneStudien F1.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__1____lm F3.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__2____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__3____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__4____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__5____lm F2.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__6____lm F1.0
  AngiStatusenTilDeUlikeNiv_eneIDetKatolskeHierarkiet__7____lm F1.0
  HvorKjentVarDuMedDetKatolskeHierarkietF_rDenneStudien F1.0
  KanDuGjetteHvaHypotesenBakEksperimentetVar A27
  LocationLatitude A15
  LocationLongitude A11
  LocationAccuracy F2.0.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


