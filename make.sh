#!/bin/bash

g++ -o test.o -c ./src/test/src/test.cc -I ./src/test/include/

g++ -o leetcode_test.o -c ./testcase/src/leetcode_test.cc -I ./ -I ./src/test/include/  -I ./gmock/include -I ./testcase/include/

g++ -o main.o -c ./mockCus/main.cc -I ./ -I ./src/test/include/  -I ./gmock/include -I ./testcase/include/


g++ -o main *.o -I./include -L./gmock/lib -lgmock -lgtest -lpthread
