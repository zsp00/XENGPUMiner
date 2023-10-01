sudo apt update & sudo apt install ocl-icd-opencl-dev build-essential cmake python3-pip nano screen -y
git clone https://github.com/zsp00/XENGPUMiner.git
cd XENGPUMiner 
chmod +x build.sh 
pip install -U -r requirements.txt  
./build.sh -cuda_arch sm_87
