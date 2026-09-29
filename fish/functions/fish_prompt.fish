function fish_prompt
    # Username in C1E1C1
    set_color C1E1C1
    echo -n "$USER"

    # '@' symbol in white
    set_color white
    echo -n "@"

    # Hostname in white using uname -n
    echo -n (uname -n)" "

    # Current directory in C1E1C1
    set_color C1E1C1
    echo -n (prompt_pwd)

    # Prompt arrow in white
    set_color white
    echo -n "> "

    # Reset color
    set_color normal
end
