FROM oraclelinux:9

RUN yum -y update

RUN mkdir /app
WORKDIR /app

RUN yum install -y git gcc 

RUN git clone https://github.com/esnet/iperf
WORKDIR /app/iperf

RUN ./configure; make; make install

ENTRYPOINT ["tail", "-f", "/dev/null"]
