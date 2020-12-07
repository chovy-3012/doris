dir=$(dirname $(readlink -f $0))

docker run --name doris-build -it --rm \
-v $dir/../:/root/incubator-doris/ \
-v /home/doris/.m2/:/root/.m2 \
apachedoris/doris-dev:build-env-1.2 /bin/bash /root/incubator-doris/my-script/mybuild.sh
