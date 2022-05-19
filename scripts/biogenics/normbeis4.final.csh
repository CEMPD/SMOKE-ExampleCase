#!/bin/csh -fx

# Script to run the biogenic SMOKE-TestCase
# normbeis 4

source ../directory_definitions.csh

setenv BIOGENIC_INPDIR "$CASEINPUTS/biogenics/"

setenv BEISFAC "$BIOGENIC_INPDIR/beld6_efac_with_ag_yn.csv"
setenv BELD6 "$BIOGENIC_INPDIR/BELDv6.0_Norm_Area_lwmask_12US1_RDS-2013-0013_MODIS_CDL_Canada.Beta.ncf"
setenv BIOMASS "$BIOGENIC_INPDIR/BELDv6.0_Leaf_Bio_Mass_12US1_RDS-2013-0013_MODIS_CDL_Canada.Beta.ncf"
setenv BEIS_NORM_EMIS "$BIOGENIC_INPDIR/beis4_norm_emis.12US1.ncf

setenv OUTDIR $cwd/output_data

mkdir -p OUTDIR

${SMOKE_LOCATION}/normbeis4


exit
