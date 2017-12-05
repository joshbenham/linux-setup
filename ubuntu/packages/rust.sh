#!/bin/bash

ask_question " <- Do you want to install Rust? [y|n] "

if said_yes ; then
    curl https://sh.rustup.rs -sSf | sh
fi