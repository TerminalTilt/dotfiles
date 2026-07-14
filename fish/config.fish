# Disable fish greeting
set -g fish_greeting

# Enable truecolor for micro editor
set -x MICRO_TRUECOLOR 1

# Clear screen on startup
clear

# Run hyfetch if available
if type -q hyfetch
    hyfetch
end

# SSH agent auto-start
if test -z "$SSH_AUTH_SOCK"
    eval (ssh-agent -c)
    set -xg SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -xg SSH_AGENT_PID $SSH_AGENT_PID
end

# Disable keyboard protocol
set -g fish_enable_keyboard_protocol false

# Custom prompt with pink/purple colors
function fish_prompt
    set -l color_user "#FF85BF"
    set -l color_host "#9D5CFF"
    set -l color_at   "#E080FF"
    set -l color_dir  "#E080FF"
    set -l color_arrow "#5C9DFF"

    printf "\e[38;2;255;133;191;1m%s\e[0m" "$USER"
    printf "\e[38;2;224;128;255;1m@\e[0m"
    printf "\e[38;2;157;92;255;1m%s\e[0m " (string shorten -m 20 -- (hostname))
    printf "\e[38;2;224;128;255;1m%s\e[0m " (prompt_pwd)
    printf "\e[38;2;92;157;255;1m❯\e[0m "
end

# Add ~/.local/bin to PATH if it exists
if test -d "$HOME/.local/bin"
    set -x PATH $PATH $HOME/.local/bin
end
