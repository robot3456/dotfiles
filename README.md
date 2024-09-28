# Readme of my dotfiles

This is the Readme.md of my dotfiles containing all information on the softwares/packages that I use when I install a new Linux machine. 

## Other configs inspiration

- [Want a PERFECT Linux Setup? Watch This Now - typecraft](https://www.youtube.com/watch?v=wXZgUudR41I)
- [We may have killed p10k, so I found the perfect replacement - Dreams of Autonomy](https://www.youtube.com/watch?v=9U8LCjuQzdc)
- [How I Make My Terminal Beautiful - Double Dot Studios](https://www.youtube.com/watch?v=iFALVHmzPCE)
- [Turn VIM into a full featured IDE with only one command - Dreams of code](https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf&index=2)
- [Tmux has forever changed the way I write code. - Dreams of code](https://www.youtube.com/watch?v=DzNmUNvnB04)
- [This may be my favorite CLI tool ever - typecraft](https://www.youtube.com/watch?v=oTNRvnQLLLs)
- [Configuring my Emacs. Vim users are not invited!](https://www.youtube.com/watch?v=PKaJoqQQoIA)
## How to use ?

- Clone this repo into your .config directory :

```bash
git clone https://github.com/robot3456/dotfiles
```

- stow in the dotfiles directory :

```bash
cd dotfiles 
stow .
```
- the config files are now available in the .config directory

## Softwares/Packages:
### Must have 
- [Alacritty](https://github.com/alacritty/alacritty) : terminal
- [Kitty](https://github.com/kovidgoyal/kitty) : terminal
- [Neovim](https://github.com/neovim/neovim) + [NVChad](https://github.com/NvChad/NvChad) : text editor
- [stow](https://www.gnu.org/software/stow/) : to manage dotfiles
- [neofetch]()/[fastfetch](https://github.com/sameemul-haque/dotfiles/tree/mocha/.config/fastfetch)
- [lsd]() (impoved ls with icons) / [logo-ls](https://github.com/Yash-Handa/logo-ls?tab=readme-ov-file#linux)
- Thunar : file manager
### Optionnal
- [tmux](https://github.com/tmux/tmux/wiki) + [tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [pywal](https://github.com/dylanaraps/pywal) Auto change color theme to match the wallpaper


## Tasks Post-Build: 
- install zsh + [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)/[ohmyposh](https://github.com/JanDeDobbeleer/oh-my-posh) + [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- create aliases
```bash
alias q="exit"
alias c="clear"
alias nv="nvim"
alias ls="lsd" 
alias nf="neofetch"
```
- create "Gitted" and "Programming" directory


## Fonts:

Install these fonts and run ```fc-cache -f -v```

- Meslo from powerlevel10k 
- Jet brain Nerd font
- UbutuMono 
- Iosevka
- Unscii 
- Inter (for system font)
- [(Other Nerd fonts)](https://www.nerdfonts.com/)

List all fonts with ```fc-list```

### Changing fonts : 

Changing fonts is not as easy as changing it only in i3. 
Here are all the locations where we should change them : 

```bash
~/.config/i3/config
~/.config/rofi/launchers/type-2/shared/fonts.rasi
~/.config/polybar/config.ini
(for all apps)   ~/.config/gtk-3.0/settings.ini 

```

## Window Manager:
- change greeter-session from "pi-greeter-wayfire" to "lightdm-gtk-greeter" in /etc/lightdm.lightdm.conf
- i3 (debian) / hyprland (arch) 
- dmenu 
- feh (?)
- install xorg
- [rofi](https://github.com/adi1090x/rofi) : laucher type 2 - style 2
- [Polybar](https://github.com/polybar/polybar)


## Theme:
- [Catpuccin](https://github.com/catppuccin/catppuccin)



