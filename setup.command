# setting the environment of xcode and miniforge
echo '---------- xcode ----------'
yes | xcode-select --install
echo '---------- miniforge ----------'
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh
yes | bash Miniforge3-MacOSX-arm64.sh
rm Miniforge3-MacOSX-arm64.sh