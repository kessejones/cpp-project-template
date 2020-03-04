CXX=g++

CXX_FLAGS= -I src/include
CXX_LIBS=

BINARY=program

OBJS= \
	src/main.o	

all: clean $(OBJS) $(BINARY)

.cpp.o:
	$(CXX) -c $< -o $@ $(CXX_FLAGS) $(CXX_LIBS)

$(BINARY):
	mkdir -p build
	$(CXX) -o ./build/$@ $(OBJS) $(CXX_LIBS)

clean:
	rm -f $(OBJS)
	rm -f ./build/$(BINARY)

run:
	./build/$(BINARY)
