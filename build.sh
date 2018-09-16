set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cc102_ecr_test
docker build -t api -f ./dockerfile/dockerfile-api
docker build -t mysql -f ./dockerfile/dockerfile-mysql
docker build -t line -f ./dockerfile/dockerfile-line
docker build -t dns -f ./dockerfile/dockerfile-dns
docker build -t iii -f ./dockerfile/dockerfile-iii
#docker-compse up -d
docker tag api $USERNAME/$IMAGE:api
docker tag mysql $USERNAME/$IMAGE:mysql
docker tag line $USERNAME/$IMAGE:line
docker tag dns $USERNAME/$IMAGE:dns
docker tag iii $USERNAME/$IMAGE:iii




#docker build -t $USERNAME/$IMAGE:latest .
#version=`cat VERSION`
#echo "version: $version"
#docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version


