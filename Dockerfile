FROM ubuntu:22.04                                                                                                                                   
MAINTAINER Osamu Ogasawara <oogasawa@nig.ac.jp>                                                                                                     
                                                                                                                                                    
RUN apt update -y && apt upgrade -y && \                                                                                                                      
    apt install -y fio

