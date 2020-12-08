dir=$(dirname $(readlink -f $0))

echo "build fe and be"
cd $dir/../
sh ./build.sh

echo "build broker"
cd $dir/../fs_brokers/apache_hdfs_broker
sh build.sh

cd $dir/../
chmod -R 777  output
