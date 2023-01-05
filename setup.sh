OLD=.old-bashrc
if [ ! -f $OLD ] ;then
  cp ~/.bashrc $OLD
fi

sudo apt update
sudo apt install curl gcc g++ cmake clang pkg-config libssl-dev python3-dev neovim python3-venv wget ninja-build libc++-dev libc++abi-dev libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libxext-dev libxfixes-dev libgl1-mesa-dev
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 15
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install sccache
echo "export RUSTC_WRAPPER=sccache" >> ~/.bashrc
echo "export vi=nvim" >> ~/.bashrc
echo "source ~/.cargo/env" >> ~/.bashrc
