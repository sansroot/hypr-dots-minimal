# Minimalist version of my Hypr-dots project
## Warning
**Clearing the cache and logging out of Hyprland will prevent SWWW from setting the wallpaper automatically and Pywal colors will be gone. You'll need to reapply your wallpaper using the wallpaper-selector (ALT+C) or rerun the dotfiles installer.**

## 1. Dependencies installation

**You will have to manually install the dependencies (sometimes package names changes. Right, ***Hyprshot***?)**
#### Pywal
```
yay -S python-pywal16
```
#### Papirus Icons
```
yay -S papirus-folders-catppuccin-git
```
#### Waybar:
```
sudo pacman -S waybar
```

#### Zsh: 
```
sudo pacman -S zsh 
```
#### Hyprland: 
```
sudo pacman -S hyprland 
```
#### Hyprshot: 
```
yay -S hyprshot 
```
#### Hyprlock: 
```
sudo pacman -S hyprlock 
```
#### Swww: 
```
sudo pacman -S swww 
```
#### Alacritty: 
```
sudo pacman -S alacritty
```
#### Nerd-fonts and Awesome-fonts: 
```
sudo pacman -S awesome-terminal-fonts otf-font-awesome ttf-font-awesome
```
#### Fastfetch: 
```
sudo pacman -S fastfetch 
```
#### Gnome polkit: 
```
sudo pacman -S polkit-gnome 
```
#### Oh-my-ZSH: 

<a>https://github.com/ohmyzsh/ohmyzsh</a>

#### Zsh auto-suggestion and syntax-highlight

<a>https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df</a>

#### PowerLevel10K:

<a>https://github.com/romkatv/powerlevel10k</a>
## Rofi
#### Rofi:
  ```
  sudo pacman -S rofi-wayland imagemagick w3m
  ```
#### Rofi fonts:

  <a>https://github.com/adi1090x/rofi</a>

## 2. Dotfiles installation
#### Paste it in your terminal:
```
git clone https://github.com/sansroot/hypr-dots-minimal
cd hypr-dots-minimal
sudo chmod -R 777 *
bash ./dotfiles_installer.sh
```

## 4. To help you


#### Nwg-look: 
```
sudo pacman -S nwg-look
```
#### Apple Keyboard native path to configure key layout: 
```
/sys/bus/hid/drivers/apple/module/parameters
```
#### Keyd for remaping keys at kernel level: 
```
sudo pacman -S keyd
```
#### Screen share in hyprland: 
<a>https://gist.github.com/brunoanc/2dea6ddf6974ba4e5d26c3139ffb7580</a>

#### Keybinds

<details>



| Action                                | Shortcut (Key)      |
|---------------------------------------|---------------------|
| Open themes                           | <kbd>Alt</kbd> + <kbd>C</kbd> |
| Open terminal                         | <kbd>Alt</kbd> + <kbd>Return</kbd> |
| Kill active window                    | <kbd>Alt</kbd> + <kbd>Q</kbd> |
| Exit environment                      | <kbd>$mainMod</kbd> + <kbd>M</kbd> |
| Toggle fullscreen mode                | <kbd>$mainMod</kbd> + <kbd>F</kbd> |
| Open file manager                     | <kbd>$mainMod</kbd> + <kbd>E</kbd> |
| Toggle floating window                | <kbd>Alt</kbd> + <kbd>F</kbd> |
| Open menu                             | <kbd>Alt</kbd> + <kbd>X</kbd> |
| Open power menu                       | <kbd>Alt</kbd> + <kbd>Z</kbd> |
| Toggle split mode                     | <kbd>Alt</kbd> + <kbd>S</kbd> |
| Move focus to the left                | <kbd>$mainMod</kbd> + <kbd>A</kbd> |
| Move focus to the right               | <kbd>$mainMod</kbd> + <kbd>D</kbd> |
| Move focus up                         | <kbd>$mainMod</kbd> + <kbd>W</kbd> |
| Move focus down                       | <kbd>$mainMod</kbd> + <kbd>S</kbd> |
| Take a screenshot                     | <kbd>Alt</kbd> + <kbd>P</kbd> |
| Lock screen                           | <kbd>$mainMod</kbd> + <kbd>L</kbd> |
| Kill panel                            | <kbd>$mainMod</kbd> + <kbd>K</kbd> |
| Start panel                           | <kbd>$mainMod</kbd> + <kbd>J</kbd> |
| Switch to workspace 1                 | <kbd>Alt</kbd> + <kbd>1</kbd> |
| Switch to workspace 2                 | <kbd>Alt</kbd> + <kbd>2</kbd> |
| Switch to workspace 3                 | <kbd>Alt</kbd> + <kbd>3</kbd> |
| Switch to workspace 4                 | <kbd>Alt</kbd> + <kbd>4</kbd> |
| Switch to workspace 5                 | <kbd>Alt</kbd> + <kbd>5</kbd> |
| Switch to workspace 6                 | <kbd>Ctrl</kbd> + <kbd>1</kbd> |
| Switch to workspace 7                 | <kbd>Ctrl</kbd> + <kbd>2</kbd> |
| Switch to workspace 8                 | <kbd>Ctrl</kbd> + <kbd>3</kbd> |
| Switch to workspace 9                 | <kbd>Ctrl</kbd> + <kbd>4</kbd> |
| Switch to workspace 10                | <kbd>Ctrl</kbd> + <kbd>5</kbd> |
| Move window to workspace 1            | <kbd>$mainMod</kbd> + <kbd>1</kbd> |
| Move window to workspace 2            | <kbd>$mainMod</kbd> + <kbd>2</kbd> |
| Move window to workspace 3            | <kbd>$mainMod</kbd> + <kbd>3</kbd> |
| Move window to workspace 4            | <kbd>$mainMod</kbd> + <kbd>4</kbd> |
| Move window to workspace 5            | <kbd>$mainMod</kbd> + <kbd>5</kbd> |
| Move window to workspace 6            | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>1</kbd> |
| Move window to workspace 7            | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>2</kbd> |
| Move window to workspace 8            | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>3</kbd> |
| Move window to workspace 9            | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>4</kbd> |
| Move window to workspace 10           | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>5</kbd> |


</details>











