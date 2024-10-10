# Installer Python 3.11
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.11 python3.11-venv python3.11-dev
python3.11 --version

# Installer Poetry
curl -sSL https://install.python-poetry.org | python3 -
echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bash_profile
source $HOME/.bash_profile
poetry --version

# Installer Nodejs & Npm
# Installe nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bash_profile
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> $HOME/.bash_profile
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> $HOME/.bash_profile
source $HOME/.bash_profile
nvm install --lts
node -v
npm -v

# Étape de configuration
1. Cloner le répo git de Vana-dlp-chatgpt
git clone https://github.com/vana-com/vana-dlp-chatgpt.git
cd vana-dlp-chatgpt

2. Installer les dépendances
poetry install

3. Installer Vana CLI
pip install vana

# Exporter les clés privées
# Suis les prompts et enregistre de manière sécurisée les clés privées affichées
vanacli wallet export_private_key
