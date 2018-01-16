## Vim config
this repository is to keep my vim configuration so that I can get my config anywhere I want!
(The bash codes are designed for ubuntu and ubuntu-based systems)

enter the following commands to start:

```bash
git clone https://github.com/ZunaedSifat/vim-config.git
cd vim-config
cp -r .vim ~/
cp .vimrc ~/
cd ~/.vim
./setup.sh
```

Now open the ~/.vimrc and use :PluginInstall command
Then install ycm things

```bash
./setup_ycm.sh
```

### Bingo! You are done!
