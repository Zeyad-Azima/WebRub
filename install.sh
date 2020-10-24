#!/bin/bash
echo "Install ..."
curl https://sh.rustup.rs -sSf | sh
sudo apt install cargo
source $HOME/.cargo/env
sudo apt install ruby-full
sudo apt install python3
sudo apt install python3-pip
sudo apt install whatweb
gem install colorize
pip3 install -r requirements.txt
git clone https://github.com/Edu4rdSHL/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ..
sudo chmod +x WebRub.rb
sudo ruby WebRub.rb