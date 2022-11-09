#!/bin/csh -fx

# Script to run the biogenic SMOKE-TestCase
# Using normbeis4 with BELD6
# Checks for input file consistency enabled

limit stacksize unlimited

setenv SECTOR "beis"

source ../directory_definitions.csh

setenv PROMPTFLAG FALSE

setenv BIOGENIC_INPDIR "$CASEINPUTS/biogenics/"
setenv OUTDIR "$INSTALL_DIR/$CASE/output"

setenv BEISFAC "$BIOGENIC_INPDIR/beld6_efac_with_ag_yn.csv"
setenv BELD6 "$BIOGENIC_INPDIR/BELDv6.0_Norm_Area_lwmask_12US1_RDS-2013-0013_MODIS_CDL_Canada.Beta.ncf"
setenv BIOMASS "$BIOGENIC_INPDIR/BELDv6.0_Leaf_Bio_Mass_12US1_RDS-2013-0013_MODIS_CDL_Canada.Beta.ncf"
setenv BEIS_NORM_EMIS "$BIOGENIC_INPDIR/beis4_norm_emis.12US1.ncf"

# Comment out if you want to skip LUSE checks
#setenv CHECK_LUSE FALSE

mkdir -p $OUTDIR
${SMOKE_LOCATION}/normbeis4


exit
