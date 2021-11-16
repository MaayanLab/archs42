#!/bin/bash

# these variables are passed as env variables
#ARCHS4="https://maayanlab.cloud/archs4"
#ROOKY="https://maayanlab.cloud/custom"
#ELYSIUM="https://maayanlab.cloud/cloudalignment"
#HYDRA="https://maayanlab.cloud/hydra"
#ENRICHR="https://maayanlab.cloud/Enrichr"
#BIOJUPIES="https://maayanlab.cloud/biojupies"
#DATASETSTOOLS="https://maayanlab.cloud/datasets2tools"
#SCAVI="https://maayanlab.cloud/scavi"
#HARMONIZOME="https://maayanlab.cloud/Harmonizome"

ARCHS4_OLD="https://amp.pharm.mssm.edu/archs4"
ROOKY_OLD="https://maayanlab.cloud/custom"
ELYSIUM_OLD="https://amp.pharm.mssm.edu/cloudalignment"
HYDRA_OLD="https://amp.pharm.mssm.edu/hydra"
ENRICHR_OLD="https://amp.pharm.mssm.edu/Enrichr"
BIOJUPIES_OLD="https://amp.pharm.mssm.edu/biojupies"
DATASETSTOOLS_OLD="https://amp.pharm.mssm.edu/datasets2tools"
SCAVI_OLD="https://amp.pharm.mssm.edu/scavi"
HARMONIZOME_OLD="https://amp.pharm.mssm.edu/Harmonizome"
CORRELATION_OLD="https://amp.pharm.mssm.edu/matrixapi"

cd /var/www/html/archs4

if [ ! -z ${ARCHS4+x} ];
then
    grep -rl $ARCHS4_OLD . | xargs sed -i 's@'"$ARCHS4_OLD"'@'"$ARCHS4"'@g';
fi

if [ ! -z ${ELYSIUM+x} ];
then
    grep -rl $ELYSIUM_OLD . | xargs sed -i 's@'"$ELYSIUM_OLD"'@'"$ELYSIUM"'@g';
fi

if [ ! -z ${ROOKY+x} ];
then
    grep -rl $ROOKY_OLD . | xargs sed -i 's@'"$ROOKY_OLD"'@'"$ROOKY"'@g';
fi

if [ ! -z ${HYDRA+x} ];
then
    grep -rl $HYDRA_OLD . | xargs sed -i 's@'"$HYDRA_OLD"'@'"$HYDRA"'@g';
fi

if [ ! -z ${ENRICHR+x} ];
then
    grep -rl $ENRICHR_OLD . | xargs sed -i 's@'"$ENRICHR_OLD"'@'"$ENRICHR"'@g';
fi

if [ ! -z ${BIOJUPIES+x} ];
then
    grep -rl $BIOJUPIES_OLD . | xargs sed -i 's@'"$BIOJUPIES_OLD"'@'"$BIOJUPIES"'@g';
fi

if [ ! -z ${DATASETSTOOLS+x} ];
then
    grep -rl $DATASETSTOOLS_OLD . | xargs sed -i 's@'"$DATASETSTOOLS_OLD"'@'"$DATASETSTOOLS"'@g';
fi

if [ ! -z ${SCAVI+x} ];
then
    grep -rl $SCAVI_OLD . | xargs sed -i 's@'"$SCAVI_OLD"'@'"$SCAVI"'@g';
fi

if [ ! -z ${HARMONIZOME+x} ];
then
    grep -rl $HARMONIZOME_OLD . | xargs sed -i 's@'"$HARMONIZOME_OLD"'@'"$HARMONIZOME"'@g';
fi

if [ ! -z ${CORRELATION+x} ];
then
    grep -rl $CORRELATION_OLD . | xargs sed -i 's@'"$CORRELATION_OLD"'@'"$CORRELATION"'@g';
fi

cd /var/www/html
