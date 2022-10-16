# ❄️ Winter

## ℹ️ General information
> Dots in winter style (e.g. with beautiful Nord theme) made on Hyprland.
- **STATUS**: **WIP**
- **Compositor**: **[Hyprland](https://github.com/hyprwm/Hyprland/)** (wayland)
- **GTK Theme**: **[Nordic](https://github.com/EliverLara/Nordic/)** based on **[Nord colorscheme](https://www.nordtheme.com/)**
- **Terminal**: **[alacritty](https://alacritty.org/)** with **[fish](https://fishshell.com/)** shell
- **Bar**: **[waybar](https://github.com/Alexays/waybar/)** (waybar-hyprland)
- **Launcher**: **[rofi](https://github.com/davatorium/rofi)** (wayland fork)
- **Editor**: **[neovim](https://neovim.io/)** with **[NvChad](https://nvchad.com/)** config

## 🖼️ Gallery
![image](https://user-images.githubusercontent.com/113468120/196006043-a7276580-398f-4e38-8c21-f4a54240fdec.png)
![image](https://user-images.githubusercontent.com/113468120/196006058-fe6a441d-73cb-4abc-96c8-05164e26f8b1.png)

## 💾 Installation
You can find installation steps below.
<details>
<summary><b>1. Dependencies</b></summary>

### AUR
Replace ``paru`` with your AUR helper if you use another.
```
paru -S hyprland alacritty waybar-hyprland-git neovim rofi-lbonn-wayland-git cava grim slurp dunst hyprpaper-git fish wl-clipboard spicetify-cli
```
</details>
<details>
<summary><b>2. Dotfiles</b></summary>

Clone into this branch recursively, copy all files and folders into your ``$HOME``.
```
git clone --branch winter --recursive https://github.com/f3rvi/dotfiles.git
cp -r dotfiles/. $HOME
```
</details>
<details>
<summary><b>3. Spotify theme</b></summary>

If you have Spotify installed, use these commands to rice your client.
```
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify config current_theme Nord color_scheme base
spicetify backup apply
```
</details>
<details>
<summary><b>4. Firefox theme</b></summary>

You could also rice your Firefox.
```
git clone https://github.com/EliverLara/firefox-nordic-theme && cd firefox-nordic-theme
./scripts/install.sh
```
</details>
