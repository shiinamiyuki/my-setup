sudo apt update
sudo apt install build-essentials git cmake clang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install sccache
echo "export RUSTC_WRAPPER=sccache" >> ~/.bashrc
source ~/.bashrc
