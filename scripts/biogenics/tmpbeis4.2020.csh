#!/bin/csh -fx 

source ../directory_definitions.csh

setenv BIOGENIC_INPDIR "$CASEINPUTS/biogenics/"

setenv GSPRO "$BIOGENIC_INPDIR/gspro_beis_cmaq_cb6ae7_2017gb_17j_28apr2020.txt"
setenv SMK_SOURCE 'B'
setenv BEIS_VERSION  4.0
setenv OUTZONE  0
setenv BIOG_SPRO  'BC6E7'
setenv BIOMET_SAME  Y 
setenv OUT_UNITS  2
setenv BG_CLOUD_TYPE  1
setenv BIOSW_YN  N 
setenv BEIS_NORM_EMIS $cwd/output_data/beis4_norm_emis.12US1.ncf
setenv MDIR $cwd/input_data 
 
setenv TMPR_VAR  'TEMP2'
setenv PX_VERSION  Y 
setenv SOILM_VAR  'SOIM1'
setenv SOILT_VAR  'SOIT1'
setenv SOILT2_VAR  'SOIT2'
setenv ISLTYP_VAR  'SLTYP'
setenv RN_VAR  'RN'
setenv RC_VAR  'RC'
setenv PRES_VAR  'PRSFC'
setenv RGRND_VAR  'RGRND'
setenv RADYNI_VAR  'RADYNI'

setenv WSAT_VAR 'WSAT_PX'

setenv TEMPG_VAR  'TEMPG'
setenv LAI_VAR  'LAI'
setenv Q2_VAR  'Q2'
setenv STOMI_VAR  'RSTOMI'
setenv USTAR_VAR  'USTAR'
setenv G_STTIME  0
setenv G_TSTEP  10000
setenv G_RUNLEN  250000
setenv PROMPTFLAG   N

setenv OUTDIR $cwd/output_data

setenv INITIAL_RUN  N

setenv G_STDATE  2020001 
set yymmdd = 200101
set yyyymmdd = 20200101
set gdayp1   = 20200102

setenv MET_FILE1   "$BIOGENIC_INPDIR/METCRO2D_$yymmdd"
setenv GRID_CRO_2D "$BIOGENIC_INPDIR/GRIDCRO2D_$yymmdd"
setenv B4GTS_L     $cwd/output_data/b4gts_l.$yyyymmdd.ncf
setenv B4GTS_S     $cwd/output_data/b4gts_s.$yyyymmdd.ncf
setenv SOILINP     "$BIOGENIC_INPDIR/soilout.$yyyymmdd.ncf"
setenv LOGFILE     $cwd/output_data/tmpbeis4.$yyyymmdd.log
setenv SOILOUT     $cwd/output_data/soilout.$gdayp1.ncf


${SMOKE_LOCATION}/tmpbeis4

exit
