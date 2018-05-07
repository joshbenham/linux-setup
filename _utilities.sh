headline() {
    echo "$1"
}

ask_question() {
    read -p "$1" -r
}

said_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] && return 0 || return 1
}
