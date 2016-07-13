/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd ~/Sites
git clone git@github.com:douglascorrea/til.git
git clone git@github.com:powerline/fonts.git
cd fonts
./install.sh
cd ..
git clone git@github.com:ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
brew tap caskroom/cask
brew tap homebrew/versions
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap homebrew/services
# Install font tools.
brew tap bramstein/webfonttools
brew install cmake
brew install mono
brew install go
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew cask install skyfonts
brew cask install font-input
brew cask install font-monoid
brew cask install kindle
brew cask install selfcontrol
brew install heroku
brew cask install virtualbox
brew cask install spotify
#brew cask install sublime-text3
#brew cask install iterm2
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install vlc
brew cask install rescuetime
brew cask install limechat
brew install mercurial
brew install hub
# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp
brew install screenfetch
brew install shellcheck
brew install ctags
brew install wget
brew cask install bartender
brew cask install istat-menus
brew cask install bitbar
#brew install tmux
brew cask install skype
brew cask install sketch
brew cask install skitch
brew cask install evernote
brew cask install dropbox
brew cask install microsoft-office
brew cask install firefox
brew install rbenv
brew install python
pip install --upgrade pip
brew install python3
pip install virtualenv
pip install virtualenvwrapper
brew install nvm
mkdir ~/.nvm
brew install postgres
brew install mysql
brew install jenv
brew cask install vmware-fusion
brew cask install vmware-horizon-client
brew cask install intellij-idea
#curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh
curl https://sh.rustup.rs -sSf | sh
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
# brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install docker
brew install docker-machine
brew install docker-compose
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli
brew install the_silver_searcher
brew install fzf
#rm -rf ~/.vimrc
#ln -s ~/Sites/dotfiles/.vimrc ~/.vimrc
brew cleanup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
