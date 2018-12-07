cd ~
CONDA_PATH="https://repo.anaconda.com/archive/Anaconda2-5.3.1-Linux-x86_64.sh"
sudo apt-get install git vim -y
echo "Downloading Cona..."
wget -O anaconda.sh $CONDA_PATH
chmod +x anaconda.sh
echo "Installing Cona..."
./anaconda.sh -y
rm anaconda.sh
CONDA_BIN="~/anaconda2/bin/conda"
echo "Run Conda Update..."
$CONDA_BIN update conda -y
echo "Preparing bash_aliases..."
echo 'alias gst="git status"' > ~/.bash_aliases
echo 'alias gco="git checkout"' >> ~/.bash_aliases
echo 'cd /vagrant' >> ~/.bash_aliases
srouce ~/.bashrc
echo "Create fastai environments"
$CONDA_BIN env create -f environment-cpu.yml