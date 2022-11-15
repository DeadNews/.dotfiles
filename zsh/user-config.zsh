## Alias section
alias exa="exa --icons"

## Funcs section
cheat() {
  curl "https://cheat.sh/$1"
}
ipinfo() {
  curl "https://ipinfo.io/$1"
}

## Plugins section
if [[ -e /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.plugin.zsh ]]; then
  source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.plugin.zsh
  # set colors
  export FZF_DEFAULT_OPTS='--color=gutter:-1,bg+:#4f5666'
  # preview directory's content with exa when completing cd
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --icons $realpath'
  # show systemd unit status
  zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'
fi
if [[ -e /usr/share/zsh/plugins/history-search-multi-word/history-search-multi-word.plugin.zsh ]]; then
  source /usr/share/zsh/plugins/history-search-multi-word/history-search-multi-word.plugin.zsh
  # set colors
  zstyle "history-search-multi-word" highlight-color "bg=#4f5666,bold"
  zstyle ":plugin:history-search-multi-word" active "standout"
fi
