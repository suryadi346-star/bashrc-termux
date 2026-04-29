# ~/.bash_profile - Executed for login shells

# Source bashrc for interactive shells
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

date

# Login-specific settings
if [ -n "$BASH" ] && [ -n "$PS1" ]; then
    # Display system info on login
    echo -e "System: \033[1;33m$(uname -srm)\033[0m"
    echo -e "Shell: \033[1;36m$BASH_VERSION\033[0m"
    echo -e "Packages: \033[1;35m$(pkg list-installed 2>/dev/null | wc -l)\033[0m"
    echo ""
fi
