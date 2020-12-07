dir=$(dirname $(readlink -f $0))
cd $dir
set -e
echo "<<=== build source ====>>"
sh ./docker-build-source.sh
echo "<<== package bin======>>"
sh ./package.sh
echo "<<=====build img =====>>"
rm -fr ../my-docker/doris.tar.gz
cp ../output/doris.tar.gz ../my-docker
sh ./build-img.sh $1
