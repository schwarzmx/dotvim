#~/bin/sh

echo "Setting up vim preferences..."

#Install fonts
echo -n "installing font... "
if [ ! -f .fonts/Monaco_Linux-Powerline.otf ]
then
        mkdir -p ~/.fonts
        cp -f assets/Monaco_Linux-Powerline.otf ~/.fonts
fi
echo "ok"

echo "Creating symbolic links..."

if [ -f ~/.vimrc ]
then
	mv ~/.vimrc ~/.vimrc.backup
fi
ln -s ~/.vim/vimrc ~/.vimrc
