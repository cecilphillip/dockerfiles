#!/bin/bash
/usr/bin/mc config host add demominio http://minioserver:9000 demouser demopass;

echo "Creating loki bucket.."
#/usr/bin/mc rm -r --force demominio/loki;
/usr/bin/mc mb demominio/loki;
/usr/bin/mc anonymous set public demominio/loki;


echo "Creating tempo bucket.."
#/usr/bin/mc rm -r --force demominio/tempo;
/usr/bin/mc mb demominio/tempo;
/usr/bin/mc anonymous set public demominio/tempo; 

echo "Finished creating buckets"
exit 0; 