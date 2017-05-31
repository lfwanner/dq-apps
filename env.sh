
export PATH=$PATH:/varemu/varemu-master/linux/buildroot-2017.02.2/output/host/usr/bin/

export BINARY_PREFIX="arm-none-linux-gnueabi-"
export BINUTIL_HOME="/varemu/varemu-master/linux/buildroot-2017.02.2/output/host/usr"
export CC_HOME="/varemu/varemu-master/linux/buildroot-2017.02.2/output/host/usr"

export CC="${CC_HOME}/bin/${BINARY_PREFIX}gcc"
export CXX="${CC_HOME}/bin/${BINARY_PREFIX}g++"
export CPP="${CC_HOME}/bin/${BINARY_PREFIX}cpp"
export CXXCPP=""

export LD="${BINUTIL_HOME}/bin/${BINARY_PREFIX}ld"
export AS="${BINUTIL_HOME}/bin/${BINARY_PREFIX}as"
export AR="${BINUTIL_HOME}/bin/${BINARY_PREFIX}ar"
export RANLIB="${BINUTIL_HOME}/bin/${BINARY_PREFIX}ranlib"
export STRIP="${BINUTIL_HOME}/bin/${BINARY_PREFIX}strip"

export CFLAGS=" -O3 -static"
export CXXFLAGS="-O3 -static"
export LDFLAGS="-L${CC_HOME}/lib -static"
