#!/usr/bin/env bash

########################################
## About plink
## manual:
##     https://www.cog-genomics.org/plink2
## download link:
##     http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_latest.zip
## make sure to download plink first, put it in a accessable dir, e.g., ~/.local/bin

########################################
# if only vcf below, plink will add a family ID before each ID, separated with a '_'.
# bgz is to save space, also speed up the conversion by reducing disk I/O.
plink --bfile norge --recode vcf-iid bgz --out norge --cow
# produces norge.vcf.gz
# 622,179 variants of 63,721 ID.
# i have renamed original plink files norge.{bed,bim,fam}

# re-organize according to snpChimp-v4.6


