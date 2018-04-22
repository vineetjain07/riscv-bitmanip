#!/bin/bash
set -ex

cbmc --trace --function zip_unzip_invcheck     zip_unzip.cc
cbmc --trace --function zip4_unzip_eqcheck     zip_unzip.cc
cbmc --trace --function zip_unzip4_eqcheck     zip_unzip.cc

cbmc --trace --function zip_unzip_invcheck_N32 zip_unzip.cc
cbmc --trace --function zip4_unzip_eqcheck_N32 zip_unzip.cc
cbmc --trace --function zip_unzip4_eqcheck_N32 zip_unzip.cc

cbmc --trace --function zip_unzip_invcheck_N16 zip_unzip.cc
cbmc --trace --function zip3_unzip_eqcheck_N16 zip_unzip.cc
cbmc --trace --function zip_unzip3_eqcheck_N16 zip_unzip.cc

cbmc --trace --function zip_unzip_invcheck_N8  zip_unzip.cc
cbmc --trace --function zip2_unzip_eqcheck_N8  zip_unzip.cc
cbmc --trace --function zip_unzip2_eqcheck_N8  zip_unzip.cc

cbmc --trace --function zip_unzip_invcheck_N4  zip_unzip.cc
cbmc --trace --function zip_unzip_eqcheck_N4   zip_unzip.cc

cbmc --trace --function zip_bfly_0_check       zip_unzip.cc
cbmc --trace --function zip_bfly_1_check       zip_unzip.cc
cbmc --trace --function zip_bfly_2_check       zip_unzip.cc
cbmc --trace --function zip_bfly_3_check       zip_unzip.cc

echo OK
