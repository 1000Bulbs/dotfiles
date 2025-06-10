# Oh My ZSH

To install [oh my zsh](https://ohmyz.sh/) without overwriting the custom [.zshrc](../zshrc) file which is installed by these dotfiles, follow these steps below.

Install Oh My ZSH without having it modify [.zshrc](../zshrc):

```sh
RUNZSH=no KEEP_ZSHRC=yes sh -c \
   "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Create your zshrc customizations file:

```sh
touch ~/.zshrc.local
```

Add the following code to your ~/.zshrc.local file:

```sh
if [[ -d "$HOME/.oh-my-zsh" ]]; then
  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="robbyrussell"
  plugins=(git)
  source "$ZSH/oh-my-zsh.sh"
fi
```

Source your ~/.zshrc file

```sh
source ~/.zshrc
```
