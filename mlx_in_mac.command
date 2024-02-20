# create GPU tensorflow environment for apple silicon
echo '---------- create conda env ----------'
yes | conda create -n tf_gpu
source activate tf_gpu
conda env list
conda activate tf_gpu
echo '---------- install python dependence mac tensorflow ----------'
conda install -c apple tensorflow-deps -y
conda clean --all -y
echo '---------- install tensorflow ----------'
pip install tensorflow-macos
pip cache purge
echo '---------- install metal ----------'
pip install tensorflow-metal
pip cache purge
echo '---------- install jupyter ----------'
conda install conda-forge::jupyterlab -y
conda clean --all -y
echo '---------- install scikit-learn ----------'
conda install anaconda::scikit-learn -y
conda clean --all -y
echo '---------- install matplotlib ----------'
conda install conda-forge::matplotlib -y
conda clean --all -y
echo '---------- install opencv ----------'
conda install conda-forge::opencv -y
conda clean --all -y
echo '---------- install joblib ----------'
conda install anaconda::joblib -y
conda clean --all -y
echo '---------- install tqdm ----------'
conda install conda-forge::tqdm -y
conda clean --all -y
echo '---------- install pandas ----------'
conda install anaconda::pandas -y
conda clean --all -y

