echo "Copying bash_aliases to your home directory..."
cp ./.bash_aliases ~/

echo "Installing nala (better apt installer)..."
sudo apt install nala -yqq

echo "Installing fzf (cmdline fuzzy findder)..."
sudo apt install fzf -yqq

echo "Installing terminator (better terminal)..."
sudo apt install terminator -yqq

echo "Installing neofetch..."
sudo apt install neofetch -yqq

echo "Installing curl..."
sudo apt install curl

echo "Configuring shiftkey package feed for Github Desktop..."
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'

echo "Installing Github Desktop..."
sudo apt update && sudo apt install github-desktop

echo "Installing cool ass Vim theme..."
sudo apt install vim
mkdir -p ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
mv ./jellybeans.vim ~/.vim/colors
cp ./.vimrc ~/

echo "Overwriting bashrc..."
rm ~/.bashrc
cp ./.bashrc ~/

clear
neofetch

echo "Run \"source ~/.bashrc\"."
