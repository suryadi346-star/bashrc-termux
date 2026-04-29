# ~/.bashrc - User specific functions and overrides

# -------------------------------------------------------------------
# CUSTOM FUNCTIONS
# -------------------------------------------------------------------

# Create directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}
# Extract any archive
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz) tar xzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) unrar x "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xf "$1" ;;
            *.tbz2) tar xjf "$1" ;;
            *.tgz) tar xzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *) echo "'$1' cannot be extracted" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Search in history
hist() {
    history | grep -i "$1"
}

# Calculator
calc() {
    echo "$*" | bc -l
}


# -------------------------------------------------------------------
# USER-SPECIFIC OVERRIDES
# -------------------------------------------------------------------
# Jika ingin override system settings, letakkan di sini
# Contoh:
# export EDITOR="vim"  # Override default editor
# alias ll='ls -la --color=always'  # Override alias

# -------------------------------------------------------------------
# WELCOME MESSAGE (Optional)
# -------------------------------------------------------------------
# echo -e "Welcome back, \033[1;32m$USER\033[0m!"
# uptime
