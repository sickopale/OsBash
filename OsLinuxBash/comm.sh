c++ -c Number/number.cpp -fpic -o Number/libnumber.o
ar rvs Number/libnumber.a Number/libnumber.o

c++ -c Vector/Vector.cpp -INumber -fpic -o Vector/libvector.o
c++ -shared Vector/libvector.o Number/libnumber.a -o Vector/libvector.so
c++ -c Test/main.cpp -INumber -IVector -o Test/main.o

c++ -o Test/main Test/main.o Number/libnumber.a Vector/libvector.so

./Test/main

