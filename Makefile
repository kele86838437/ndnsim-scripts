#链接库位于 /usr/local/lib ，可以根据需要添加
LN=-lns3-dev-core-debug\
-lns3-dev-ndnSIM-debug\
-lns3-dev-network-debug\
-lns3-dev-point-to-point-debug\
-lns3-dev-tools-debug\
-lns3-dev-topology-read-debug\
-lns3-dev-config-store-debug\
-lns3-dev-visualizer-debug

all:clean ndn-simple
ndn-simple:
	g++ -g $@.cc -o $@ $(LN)
.PHONY:clean
clean:
	rm -rf ndn-simple