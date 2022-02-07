vim=.vimrc
zsh=.zshrc
keys=keys-remapping.plist
keysdir=~/Library/LaunchAgents
bfdir=~/before-fen-config-files

mkdir -p $bfdir
[ -f ~/$vim ] && mv ~/$vim $bfdir/
[ -f ~/$zsh ] && mv ~/$zsh $bfdir/
[ -f $keysdir/$keys ] && mv $keysdir/$keys $bfdir/
cp $vim ~/$vim; cp $zsh ~/$zsh; cp $keys $keysdir/$keys

ifstatement=$(launchctl list | grep "keys-remapping")
if [[ "$ifstatement" == '' ]]
then
	launchctl load $keys
fi

echo "fen config files installed and old files stored at $bfdir/"
