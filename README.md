im-scripts
==============

通过安装ndnSim，来安装ndnSim库文件，用Eclipse Cdt来编写普通的c++ CLI程序，来模拟ndn网络运行。

    ubuntu   12.10
    gcc:     4.7.2
    make:    GNU Make 3.81
    eclispe  Juno Service Release 2
ndnsim安装
----------
参考[过程安装](http://ndnsim.net/getting-started.html)
其中

    ./waf
运行后会在 ../ns-3/目录下多出一个build目录，其中包含了各种*.h文件和*-debug.so。

    sudo ./waf intsall 
会将*.h文件安装在 /usr/local/include/ns3-dev/ns3 。为了程序调用头文件的方便,可以

    ln -s /usr/local/include/ns3-dev/ns3 /usr/local/include/
而*-debug.so会被安装在/usr/local/lib 目录下。进行lns3-*.so模块时，如果提示找不到.so，可以

    sudo vim /etc/ld.so.conf
添加一行

    /usr/local/lib
然后在终端执行

    sudo ldconfig -v
这样就可以使用g++ -g *.cc -o * -lns3* 像普通C++程序链接上ns3的链接库，并且可以在eclipse中使用cdt来debug程序了。
