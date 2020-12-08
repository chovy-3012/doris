dir=$(dirname $(readlink -f $0))

cd $dir/../
rm -fr doris
mkdir -p doris

echo "######package fe ####"
cp -r output/fe doris
cp -r output/udf doris
cp -r webroot/* doris/fe/webroot
mkdir -p doris/fe/log
mkdir -p doris/fe/doris-meta

echo "######package be####"
cp -r be/output/ doris/be
mkdir -p doris/be/log
mkdir -p doris/be/storage

echo "######package broker####"
cp -r fs_brokers/apache_hdfs_broker/output/apache_hdfs_broker doris/broker
mkdir -p doris/broker/log

ls -l doris
echo "######tar package####"
tar -czvf doris.tar.gz doris
rm -fr ./output/doris.tar.gz
mv doris.tar.gz ./output
rm -fr doris
