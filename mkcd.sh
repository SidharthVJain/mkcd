mkcd() {
    local dir="$1"

    if [ -z "$dir" ]; then
        echo "Usage: mkcd <directory>"
        return 1
    fi

    mkdir -p -- "$dir" || return
    cd -- "$dir" || return
}
