dir=$(dirname $(readlink -f $0))
version=$1
docker build -t doris:$version $dir/../my-docker
docker save doris:$version > $dir/../output/doris.img
