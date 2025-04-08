# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet # 当主题加载时保持安静，不显示警告信息 

source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme


# ---- zsh-completions ----
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)


# ---- zsh-autosuggestions ----
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# ---- zsh-syntax-highlighting ----
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ---- zsh-autocomplete ----
#source ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export http_proxy="http://127.0.0.1:7897"
export https_proxy="http://127.0.0.1:7897"
