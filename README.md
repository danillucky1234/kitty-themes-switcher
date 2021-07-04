## What does do this script?
This script will help you quickly change the theme in your terminal.  

### How it works?
Well, this script read all files in `~/.config/kitty/themes/` directory and give you a chance to select the desired theme. How? Firstly we should create a folder with themes we want to try. After that we should a little bit modify our `kitty.conf` - add new line `include ./theme.conf`. After that we can start the script. When we choose the theme, script delete (if it exists) the `theme.conf` file in `~/.config/kitty/` directory and create a new symlink. That can save our time to don't modify the `kitty.conf` every time when we want to try new theme.

### Here's what it looks like:
![Switcher menu](https://github.com/danillucky1234/kitty-themes-switcher/blob/main/kitty_menu.png)  
[Video demonstration](https://imgur.com/gallery/xZJazYh)

# How to install, prepare to use and usage
1. `git clone git@github.com:danillucky1234/kitty-themes-switcher.git`
2. `cp kitty-themes-switcher/kitty-themes-switcher.sh ~/.config/kitty/`
3. `cd ~/.config/kitty/`
4. `mkdir themes && cd themes`
5. Download all themes you want to this directory. I downloaded some themes from [this repo](https://github.com/dexpota/kitty-themes/tree/master/themes) just using [wget](https://www.man7.org/linux/man-pages/man1/wget.1.html)
6. `cd ..`
7. `vim kitty.conf`
8. Add this line to your `kitty.conf`:  
`include ./theme.conf`
9. `chmod 740 kitty-themes-switcher.sh`
10. `./kitty-themes-switcher.sh`
11. Choose the number of theme you want to try, reload the kitty and enjoy!
