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

clear
neofetch

echo "Run \"source ~/.bashrc\"."
