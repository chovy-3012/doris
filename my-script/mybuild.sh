dir=$(dirname $(readlink -f $0))
cd $dir/../
sh ./build.sh
cd fs_brokers/apache_hdfs_broker
sh build.sh
