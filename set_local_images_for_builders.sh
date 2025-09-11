#! /bin/bash

docker pull docker.io/paketobuildpacks/builder-jammy-base
docker tag docker.io/paketobuildpacks/builder-jammy-base localhost:5000/paketobuildpacks/builder-jammy-base
docker push localhost:5000/paketobuildpacks/builder-jammy-base

docker pull docker.io/paketobuildpacks/node-start
docker tag docker.io/paketobuildpacks/node-start localhost:5000/paketobuildpacks/node-start
docker push localhost:5000/paketobuildpacks/node-start

exit 0

docker pull docker.io/paketobuildpacks/build-jammy-base:0.1.143
docker tag docker.io/paketobuildpacks/build-jammy-base:0.1.143 localhost:5000/paketobuildpacks/build-jammy-base:0.1.143
docker tag docker.io/paketobuildpacks/build-jammy-base:0.1.143 localhost:5000/paketobuildpacks/build-jammy-base:latest
docker push localhost:5000/paketobuildpacks/build-jammy-base:0.1.143
docker push localhost:5000/paketobuildpacks/build-jammy-base:latest

docker pull index.docker.io/paketobuildpacks/run-jammy-base:0.1.143
docker tag index.docker.io/paketobuildpacks/run-jammy-base:0.1.143 localhost:5000/paketobuildpacks/run-jammy-base:0.1.143
docker tag index.docker.io/paketobuildpacks/run-jammy-base:0.1.143 localhost:5000/paketobuildpacks/run-jammy-base:latest
docker push localhost:5000/paketobuildpacks/run-jammy-base:latest
docker push localhost:5000/paketobuildpacks/run-jammy-base:0.1.143

docker pull index.docker.io/paketobuildpacks/run-ubi8-base:0.0.146
docker tag docker.io/paketobuildpacks/run-ubi8-base:0.0.146 localhost:5000/paketobuildpacks/run-ubi8-base:0.0.146
docker tag docker.io/paketobuildpacks/run-ubi8-base:0.0.146 localhost:5000/paketobuildpacks/run-ubi8-base:latest
docker push localhost:5000/paketobuildpacks/run-ubi8-base:0.0.146
docker push localhost:5000/paketobuildpacks/run-ubi8-base:latest

docker pull index.docker.io/paketobuildpacks/build-ubi8-base:0.0.146
docker tag docker.io/paketobuildpacks/build-ubi8-base:0.0.146 localhost:5000/paketobuildpacks/build-ubi8-base:0.0.146
docker tag docker.io/paketobuildpacks/build-ubi8-base:0.0.146 localhost:5000/paketobuildpacks/build-ubi8-base:latest
docker push localhost:5000/paketobuildpacks/build-ubi8-base:0.0.146
docker push localhost:5000/paketobuildpacks/build-ubi8-base:latest

docker pull docker.io/paketobuildpacks/build-jammy-base:0.1.143
docker tag docker.io/paketobuildpacks/build-jammy-base:0.1.143 localhost:5000/paketobuildpacks/build-jammy-base:0.1.143
docker tag docker.io/paketobuildpacks/build-jammy-base:0.1.143 localhost:5000/paketobuildpacks/build-jammy-base:latest
docker push localhost:5000/paketobuildpacks/build-jammy-base:0.1.143
docker push localhost:5000/paketobuildpacks/build-jammy-base:latest


