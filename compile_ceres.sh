dir_abs_path=$(pwd)
sudo rm -rf ${dir_abs_path}/ceres-solver-1.14.0-install-x86/
mkdir -p ${dir_abs_path}/ceres-solver-1.14.0-install-x86/
bash 0.install_eigen.sh
cd ceres-solver-1.14.0/
sudo rm -rf ./build/
mkdir build
cd build && cmake .. -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=${dir_abs_path}/ceres-solver-1.14.0-install-x86 -DEIGEN_INCLUDE_DIR=${dir_abs_path}/eigen-3.4.0-install-x86/share/eigen3/cmake -DGFLAGS=OFF -DLAPACK=OFF -DMINIGLOG=ON -DEIGENSPARSE=ON
make -j8
make install

