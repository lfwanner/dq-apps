export CXXFLAGS=" -static -O3 -g -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -static-libgcc -Wl,--hash-style=both,--as-needed -DPARSEC_VERSION=3.0-beta-20150206 -fexceptions"
export LDFLAGS="${LDFLAGS} -static"
rm -rf build
mkdir build
cd build
../src/configure --enable-threads --disable-openmp --disable-tbb --build=i686-linux-gnu --host=arm-linux-gnueabi --enable-static --prefix=`pwd`/../bin/
make
cd TrackingBenchmark
$CXX -O3 -g -funroll-loops -fprefetch-loop-arrays -fpermissive -fno-exceptions -static-libgcc -Wl,--hash-style=both -Wl,--as-needed -DPARSEC_VERSION=3.0-beta-20150206 -fexceptions -Wall -Wno-unknown-pragmas -o bodytrack AnnealingFactor.o BodyGeometry.o BodyPose.o CameraModel.o CovarianceMatrix.o ImageMeasurements.o ImageProjection.o RandomGenerator.o TrackingModel.o main.o TrackingModelPthread.o AsyncIO.o ../FlexImageLib/.libs/libflex.a -lm threads/.libs/libthreads.a -lpthread $LDFLAGS
cp bodytrack ../../bin/bodytrack.arm
cd ../..
