# Add the execute permission for the determined file(s).
alias -- +x='chmod +x'

alias ..='cd .. && pwd'
alias ...='cd ../.. && pwd'
alias ....='cd ../../.. && pwd'
alias .....='cd ../../../.. && pwd'

alias -- -='cd -'

alias ls='ls --color=auto'

# Show all files in the current working directory with their details.
alias la='ls -l --almost-all --classify --human-readable --group-directories-first'

alias grep='grep --color=auto'

# Create a new working session of the preferred file manager on the current machine.
alias mc='mc --color --nomouse --skin=modarin256'

# Create a new working session of the preferred process viewer on the current machine.
alias htop='htop --no-mouse --delay=10 --sort-key=PERCENT_MEM'

# Show each path on a separate line where the current operating system will search for executables when running a command.
alias paths='echo -e "${PATH//:/\\n}"'

alias c='clear'
alias r='reset'

alias pyclean='find "${PWD}" -name "*.py[cod]" -o -name "__pycache__" -exec rm --force --recursive {} +'

# Copy the provided text data to the system clipboard.
alias pbcopy='xclip -selection clipboard -in'

# Paste the saved text data from the system clipboard on the current machine.
alias pbpaste='xclip -selection clipboard -out'

# Trim new lines and copy data to the system clipboard.
alias copyline='tr --delete "\\n" | pbcopy'

alias open='xdg-open'
