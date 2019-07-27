
target = testGtestGmock
SRCS+=$(wildcard ./mockCus/*.cc)
SRCS+=$(wildcard ./src/test/src/*.cc)
SRCS+=$(wildcard ./testcase/src/*.cc)
OBJS:=$(patsubst %cc,%o,$(SRCS))
#$(warning $(SRCS))
#$(warning $(OBJS))

CXX=g++
LIB+=-L./gmock/lib
FLAGCXX+=-lgmock -lgtest -lpthread
HEADER:=  -I ./src/test/include/  -I ./gmock/include -I ./testcase/include/

$(target):$(OBJS)
	$(CXX) $^ -o $@ $(HEADER) $(LIB) $(FLAGCXX) 

%.o:%.cc
	$(CXX) -c $^ -o $@ $(HEADER)


.PHONY:clean
clean:
	rm -rf $(target) *.o
