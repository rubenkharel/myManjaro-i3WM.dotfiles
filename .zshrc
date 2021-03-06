# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#profile variables
source ~/.profile

#This will load all the antibody plugins form the static file.
#if plugin are not shown run "antiload"
#"antiload" command is the alias to --> check .misc.zsh file
source ~/.zsh_plugins.sh
source ~/.plugins/chroma.zsh
source ~/.zsh_config.zsh

#The below file contains alias and keybindings
source ~/.misc.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
	git
	history-substring-search
	safe-paste
)

#Loading powerlevel 10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#export Node version manager
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
