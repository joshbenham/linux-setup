#!/bin/bash

ask_question " <- Do you want to install Rust? [y|n] "

if said_yes ; then
    curl https://sh.rustup.rs -sSf | sh
fi


headline " -> Installing Rust Component Packages"

packagelist=(

rust-analysis
rust-src

)

rustup component add ${packagelist[@]}


headline " -> Installing Rust Cargo Packages"

packagelist=(

racer
rustfmt

)

cargo install ${packagelist[@]}
