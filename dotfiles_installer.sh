#!/bin/bash
wal -i .config/hypr/wallpaper.jpg &> /dev/null
lista=("mauve" "blue" "green" "lavender" "peach" "pink" "red" "sapphire" "yellow")
clear
usuario=$(whoami)
sudo usermod -a -G input $usuario
echo "Are you logged on Hyprland right now? [Y/N]"
read hypr
option="${hypr^^}"
if [ "$option" == "Y" ]; then
    hyprctl monitors all
    echo "type your main monitor, example [DP-1, HDMI-1]"
    read monitor
    sed -i "s/DP-1/$monitor/" .config/hypr/hyprland.conf &>/dev/null
    echo "type the refresh rate of your monitor, example [60, 140, 240]"
    read refresh
    sed -i "s/@240/@$refresh/" .config/hypr/hyprland.conf &>/dev/null
    echo "type the resolution of your monitor, example [1920x1080, 1280x720]"
    read resolution
    sed -i "s/1920x1080@$refresh/$resolution@$refresh/" .config/hypr/hyprland.conf &>/dev/null
    echo "Do you have a second monitor? [Y/N]"
    read hypr
    option="${hypr^^}"
    if [ "$option" == "Y" ]; then
        hyprctl monitors all
        echo "type your monitor, example [DP-2, HDMI-2]"
        read monitor
        sed -i "s/DP-2/$monitor/" .config/hypr/hyprland.conf &>/dev/null
        echo "type the refresh rate of your monitor, example [60, 140, 240]"
        read refresh
        sed -i "s/@144/@$refresh/" .config/hypr/hyprland.conf &>/dev/null
        echo "type the resolution of your monitor, example [1920x1080, 1280x720]"
        read resolution
        sed -i "s/1920x1080@$refresh/$resolution@$refresh/" .config/hypr/hyprland.conf &>/dev/null
        clear
        echo "is the second monitor on the left or on the right side on your main one? [L/R]"
        read hypr
        option="${hypr^^}"
        if [ "$option" == "R" ]; then
            clear
            echo "type the width of your main display"
            echo "example: [1920, 1280]"
            read orientation
            sed -i "s/1920x0/${orientation}x0/" .config/hypr/hyprland.conf &>/dev/null
        else
            clear
            echo "type the width of your main display"
            echo "example: [1920, 1280]"
            read orientation
            sed -i "s/1920x0/-${orientation}x0/" .config/hypr/hyprland.conf &>/dev/null
        fi
        echo "Do you have a third monitor? [Y/N]"
        read hypr
        option1="${hypr^^}"
        if [ "$option1" == "Y" ]; then
            hyprctl monitors all
            echo "type your monitor, example [HDMI-2, HDMI-A-1]"
            read monitor
            sed -i "s/HDMI-A-1/$monitor/" .config/hypr/hyprland.conf &>/dev/null
            echo "type the refresh rate of your monitor, example [60, 140, 240]"
            read refresh
            sed -i "s/@60/@$refresh/" .config/hypr/hyprland.conf &>/dev/null
            echo "type the resolution of your monitor, example [1920x1080, 1280x720]"
            read resolution
            sed -i "s/1920x1080@$refresh/$resolution@$refresh/" .config/hypr/hyprland.conf &>/dev/null
            clear
            if [ "$option" == "R" ]; then
                clear
                sed -i "s/orientation/-${orientation}x0/" .config/hypr/hyprland.conf &>/dev/null
            else
                clear
                sed -i "s/orientation/${orientation}x0/" .config/hypr/hyprland.conf &>/dev/null
            fi
        else
            sed -i "s/monitor = HDMI-A-1, 1920x1080@60, orientation, 1//" .config/hypr/hyprland.conf &>/dev/null
        fi
    else
        sed -i "s/monitor = DP-2, 1920x1080@144, 1920x0, 1//" .config/hypr/hyprland.conf &>/dev/null
        sed -i "s/monitor = HDMI-A-1, 1920x1080@60, orientation, 1//" .config/hypr/hyprland.conf &>/dev/null
        sed -i "s/monitor:DP-2/monitor:$monitor/" .config/hypr/hyprland.conf &>/dev/null
    fi
    clear
    echo "would you like to set the gaps manually? [Y/N]"
    read gaps
    gaps="${gaps^^}"
    if [ "$gaps" = "Y" ]; then
        echo "type the gaps_in (default 10): "
        read gaps_in
        echo "type the gaps_out (default 40): "
        read gaps_out
        sed -i "s/gaps_in = 10/gaps_in = $gaps_in/" .config/hypr/hyprland.conf
        sed -i "s/gaps_out = 40/gaps_out = $gaps_out/" .config/hypr/hyprland.conf
    fi
    echo "would you like to set rounded corners? [Y/N]"
    read corners
    corners="${corners^^}"
    if [ "$corners" = "Y" ]; then
        echo "type the rounded corners value (default 0): "
        read rounded
        sed -i "s/rounding = 0/rounding = $rounded/" .config/hypr/hyprland.conf
    fi
    clear
    echo "would you like to set a custom opacity? [Y/N]"
    read opacity
    opacity="${opacity^^}"
    if [ "$opacity" = "Y" ]; then
        echo "type the active_opacity (default 0.9): "
        read active_opacity
        echo "type the inactive_opacity (default 0.3): "
        read inactive_opacity
        sed -i "s/active_opacity = 0.9/active_opacity = $active_opacity/" .config/hypr/hyprland.conf
        sed -i "s/inactive_opacity = 0.3/inactive_opacity = $inactive_opacity/" .config/hypr/hyprland.conf
    fi
    clear
    echo "would you like to enable blur? [Y/N]"
    read option
    option="${option^^}"
    if [ "$option" = "Y" ]; then
        echo "would you like to set a custom blur? [Y/N]"
        read blur
        blur="${blur^^}"
        if [ "$blur" = "Y" ]; then
            echo "type the blur size (default 1): "
            read blur_size
            echo "type the blur passes (default 5): "
            read blur_passes
            sed -i "s/size = 1/size = $blur_size/" .config/hypr/hyprland.conf
            sed -i "s/passes = 5/passes = $blur_passes/" .config/hypr/hyprland.conf
        fi
    else
        sed -i "s/true, blur/false, blur/" .config/hypr/hyprland.conf
    fi
    clear
    echo "would you like to enable animations? [Y/N]"
    read animation
    animation="${animation^^}"
    if [ "$animation" = "N" ]; then
        sed -i "s/true, animations/false, animations/" .config/hypr/hyprland.conf
    fi
    clear
    echo "would you like to enable border glow? [Y/N]"
    read glow
    glow="${glow^^}"
    if [ "$glow" = "N" ]; then
        sed -i "s/true, glow/false, glow/" .config/hypr/hyprland.conf
else
    echo "When you log on hyprland, run this script again to set you monitor and refresh rate"
    sleep 4
fi
clear
cp -r .config/* -t ~/.config/
cp -r Documents/* -t ~/Documents/
cp -r Pictures/* -t ~/Pictures/
sudo cp -r ./font/Monocraft* -t /usr/share/fonts/
sudo cp -r ./cursor/* -t /usr/share/icons/
sudo cp -r ./gtkthemes/* -t /usr/share/themes/
cp -r ./.zshrc ./.p10k.zsh -t ~/
swww init &> /dev/null
wal -i ~/.config/hypr/wallpaper.jpg &> /dev/null
killall waybar &> /dev/null
waybar &> /dev/null &
sudo chmod -R 777 /usr/share/themes
sudo chmod -R 777 /usr/share/icons
sudo chmod -R 777 /usr/bin/papirus-folders
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &> /dev/null
gsettings set org.gnome.desktop.interface gtk-theme "hypr-dots-black" &> /dev/null
gsettings set org.gnome.desktop.interface cursor-theme 'hypr-dots-anonymous' &> /dev/null
hyprctl setcursor hypr-dots-anonymous 24
papirus-folders -C grey &> /dev/null
clear
echo "*****************************"
echo "Thanks for using my rice! :)"
echo "*****************************"
cd ..
rm -rf hypr-dots
fi
