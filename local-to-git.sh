vim=.vimrc
zsh=.zshrc
keys=keys-remapping.plist

rm -f $vim; rm -f $zsh; rm -f $keys
cp ~/$vim $vim; cp ~/$zsh $zsh; cp ~/Library/LaunchAgents/$keys $keys
