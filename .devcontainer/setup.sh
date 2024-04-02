#!/bin/bash

# first create the repo 
mkdir -p /home/codespace/.config/fish/conf.d

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add cargo to PATH
source $HOME/.cargo/env

# Install additional tools
cargo install cargo-watch  # Install cargo-watch for automatically running tests
cargo install cargo-edit   # Install cargo-edit for adding dependencies

# Install VS Code extensions for Rust
code --install-extension rust-lang.rust

# Install additional dependencies as needed
# For example:
# sudo apt-get update
# sudo apt-get install -y <package-name>

# After setup, execute your Rust code if needed
# For example, if you have a `main.rs` file, you can run it like this:
# cargo run
