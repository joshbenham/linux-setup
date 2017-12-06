#!/bin/bash

ask_question " <- Do you want to install Rust? [y|n] "

if said_yes ; then
    curl https://sh.rustup.rs -sSf | sh
    source ~/.bashrc
    rustup install nightly
    rustup default nightly
fi


headline " -> Installing Rust Component Packages"

packagelist=(

rust-analysis
rust-src

)

rustup component add ${packagelist[@]} --toolchain nightly


headline " -> Installing Rust Cargo Packages"

packagelist=(

racer
rustsym
rustfmt
clippy

)

cargo install ${packagelist[@]}
