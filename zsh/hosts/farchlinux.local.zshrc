export http_proxy="http://127.0.0.1:7897"
export https_proxy="http://127.0.0.1:7897"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fallensigh/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fallensigh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fallensigh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fallensigh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<