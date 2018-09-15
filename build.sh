 set -ex
      USERName=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
      IMAGE=testUser
      version=`cat VERSION`
      echo "version: $version"
      docker build -t $userName/$image:latest .
      docker tag $userName/$image:latest $userName/$image:$version
