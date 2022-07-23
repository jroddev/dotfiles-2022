#/bin/bash

# Run git prompt if git installed
command -v git >/dev/null 2>&1 || return

current_dir="$1"
git_dir="$1/.git"
# tmux doesn't update PWD as expected. Explicitly set here
alias git="git --work-tree=$current_dir --git-dir=$git_dir"

if [[ $(git status) ]]; then
    # Branch name
    branch="$(git symbolic-ref HEAD 2>/dev/null)"
    branch="${branch##refs/heads/}"

    # Working tree status (red when dirty)
    dirty=0
    # Modified files
    git diff --no-ext-diff --quiet --exit-code --ignore-submodules 2>/dev/null || dirty=1

    # # Untracked files
    [ -z "$dirty" ] && test -n "$(git status --porcelain)" && dirty=1

    # Set text color
    git_color="white"
    if [[ $dirty == 1 ]]; then
        git_color="red"
    else
        git_color="green"
    fi


    echo "#[fg=$git_color] [$branch]"
fi
