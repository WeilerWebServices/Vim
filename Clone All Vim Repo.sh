git clone https://github.com/vim/vim.git
git clone https://github.com/vim/vim-win32-installer.git
git clone https://github.com/vim/vim-appimage.git
git clone https://github.com/vim/vim-history.git
git clone https://github.com/vim/killersheep.git
git clone https://github.com/vim/colorschemes.git

curl "https://api.github.com/orgs/vim/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 git clone
