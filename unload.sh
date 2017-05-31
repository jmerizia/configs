echo 'Copying ~/.vim/'
cp -rf .vim ~/.vim 

echo 'Copying ~/.vimrc'
cp .vimrc ~/.vimrc 

echo 'Copying ~/.tmux.conf.local'
cp .tmux.conf.local ~/.tmux.conf.local 

echo 'Copying ~/.tmux/'
cp -rf .tmux ~/.tmux 

echo 'Linking .tmux/.tmux.conf to .tmux.conf'
ln ~/.tmux/.tmux.conf ~/.tmux.conf
