        KEYMAPS
_________________________________________________________________________________________________
# OIL
[-] - abre oil
[C-c] - fecha oil
[g?] - ajuda
[g.] - arquivos ocultos

# buffer
[tab] - alterna entre buffers
[S-tab] - alterna entre buffers
[Leader-w] - fecha buffer










        DEPENDENCIAS
_________________________________________________________________________________________________
# LUA
sudo apt install luarocks

# NVIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
(add no bashrc) export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# RIPGREP (grep no telescope)
sudo apt-get install ripgrep

# COMPILADOR C++ E FERRAMENTAS DE BUILD (para treesitter)
sudo apt install build-essential



# JAVA 21
sudo apt install openjdk-21-jdk -y
(add no bashrc) export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64/bin/java
(add no bashrc) export PATH=$JAVA_HOME/bin:$PATH
sudo apt install maven gradle -y

# JDTLS (para java)
mkdir -p ~/tools/jdtls
cd ~/tools/jdtls

wget https://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz
tar -xvf jdt-language-server-latest.tar.gz
export PATH="$HOME/tools/jdtls/bin:$PATH"
