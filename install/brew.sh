# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

brew tap homebrew/cask-versions

# Install packages
brew install htop
brew install iftop
brew install openssl
brew install git
brew install awscli
brew install aws-cdk
brew install wget
brew install yarn
brew install wifi-password
brew install mkcert # Used for local https development
brew install git-lfs # Used for large git files
brew install ffmpeg # Used for video manipulation
brew install fnm # node version manager
brew install readline sqlite3 xz zlib tcl-tk # Python dependencies
brew install pyenv # python version manager
brew install pyenv-virtualenv # python version manager
brew install jq # Used for json manipulation
brew install podman
brew install podman-compose
brew install gh # GitHub CLI
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew install speedtest-cli
# brew install node
brew install typescript
brew install go
brew install stats
brew install itsycal
brew install thefuck
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install z

sleep 1

echo "brew packages installed 🚀"

# Install cask packages
# https://formulae.brew.sh/cask/

brew install --cask hpedrorodrigues/tools/dockutil # See https://github.com/kcrawford/dockutil/issues/127#issuecomment-1118733013
# brew install dockutil # Used to manage the dock
brew install --cask google-chrome
brew install --cask firefox
brew install --cask iterm2
brew install --cask alfred
brew install --cask visual-studio-code
brew install --cask keyboard-maestro
brew install --cask karabiner-elements
brew install --cask slack
brew install --cask textmate
brew install --cask spotify
brew install --cask postman
brew install --cask gitkraken
brew install --cask insomnia
brew install --cask the-unarchiver
brew install --cask dropbox
brew install --cask tree
brew install --cask imageoptim
brew install --cask handbrake
brew install --cask raycast
brew install --cask vlc
brew install --cask monitorcontrol
brew install --cask discord
brew install --cask cyberduck
brew install --cask bartender
# brew install --cask kap
brew install --cask snagit
brew install --cask folx
brew install --cask aldente
brew install --cask jiggler
brew install --cask oversight
brew install --cask malwarebytes
# brew install --cask istat-menus
brew install --cask shottr
brew install --cask keycastr
brew install --cask overkill # kill itunes
brew install --cask notunes
brew install --cask zip
brew install --cask unzip
brew install --cask --no-quarantine syntax-highlight
brew install --cask contexts
#brew install --cask downie
brew install --cask kdiff3
brew install --cask iina
brew install --cask qlmarkdown
brew install --cask quicklook-json
brew install --cask emojipedia
brew install --cask raycast

sleep 1

echo "brew cask packages installed 🚀"
