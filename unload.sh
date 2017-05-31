echo 'Copying ~/.vim/'
cp -rf .vim ~

echo 'Copying ~/.vimrc'
cp .vimrc ~

echo 'Copying ~/.tmux.conf.local'
cp .tmux.conf.local ~

echo 'Copying ~/.tmux/'
cp -rf .tmux ~

echo 'Linking .tmux/.tmux.conf to .tmux.conf'
ln ~/.tmux/.tmux.conf ~/.tmux.conf
