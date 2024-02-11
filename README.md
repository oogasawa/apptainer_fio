# apptainer_fio

An apptainer container image to run fio on top of an environment where fio is not installed.

## Usage

Download the sif file as follows

``` sh
wget https://github.com/oogasawa/apptainer_fio/raw/main/apptainer_fio.sif
```

Execute `fio` with apptainer as follows.

``` sh
apptainer exec -B /data1:/mnt/data1 apptainer_fio.sif \
fio --name=test --direct=1 --filename=/mnt/data1/test --rw=readwrite --bs=1m --size=100G
```


## How to build

1, First, build a docker container image.

```
git clone https://github.com/oogasawa/apptainer_fio
cd apptainer_fio
docker build -t apptainer_fio:latest .
```

2, Create a tar file of the docker container image on your local hard disk.

``` sh
docker save -o apptainer_fio.docker.tar apptainer_fio:latest
```

3, Build a apptainer image file (`*.sif` file) from the docker image file.

``` sh
sudo apptainer build apptainer_fio.sif docker-archive://apptainer_fio.docker.tar
```

