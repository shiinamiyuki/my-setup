sudo apt update
sudo apt install gcc g++ cmake clang pkg-config libssl-dev
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 14
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install sccache
echo "export RUSTC_WRAPPER=sccache" >> ~/.bashrc
source ~/.bashrc
