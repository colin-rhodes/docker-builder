#
# Builder Dockerfile
# An image for a multi-purpose builder
#

FROM colinrhodes/pypy:stripped

MAINTAINER Colin Rhodes <colin@colin-rhodes.com>

RUN apt-get -yq update
RUN apt-get -yq --no-install-recommends install build-essential doxygen libxml2-dev libxslt-dev graphviz automake autoconf pkg-config gcc g++ make libboost-dev libedit-dev libssl-dev libtool libfcgi libfcgi-dev xfslibs-dev libfuse-dev linux-kernel-headers libcrypto++-dev libaio-dev libgoogle-perftools-dev libkeyutils-dev uuid-dev libblkid-dev libudev-dev libatomic-ops-dev libboost-program-options-dev libboost-system-dev libboost-thread-dev libexpat1-dev libleveldb-dev libsnappy-dev libcurl4-gnutls-dev libgoogle-glog-dev libpopt-dev libsparsehash-dev pkg-config libjson0-dev git unzip wget subversion default-jdk javahelper junit4 libnss3-dev uuid-runtime yasm debhelper equivs
RUN pip install nose argparse sphinx greenlet ipython
ADD libpypy-c.so /usr/lib/libpypy-c.so

CMD ["/bin/bash"]