sudo apt update & sudo apt install ocl-icd-opencl-dev build-essential cmake python3-pip nano screen -y
git clone https://github.com/zsp00/XENGPUMiner.git
cd XENGPUMiner 
chmod +x build.sh 
pip install -U -r requirements.txt  
./build.sh -cuda_arch sm_87

screen -S gpu0
./xengpuminer -d 0
screen -S gpu1
./xengpuminer -d 1
screen -S gpu2
./xengpuminer -d 2
screen -S gpu3
./xengpuminer -d 3
screen -S miner
python3 miner.py --gpu=true
