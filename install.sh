sudo apt update & sudo apt install ocl-icd-opencl-dev build-essential cmake python3-pip nano screen -y
git clone https://github.com/zsp00/XENGPUMiner.git
cd XENGPUMiner 
chmod +x build.sh 
pip install -U -r requirements.txt  
./build.sh -cuda_arch sm_87

nohup ./xengpuminer -d 0 > gpu0 2>&1 &
nohup ./xengpuminer -d 1 > gpu1 2>&1 &
nohup ./xengpuminer -d 2 > gpu2 2>&1 &
nohup ./xengpuminer -d 3 > gpu3 2>&1 &
nohup python3 miner.py --gpu=true  > miner 2>&1 &
