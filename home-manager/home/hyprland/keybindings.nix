{ pkgs, ... }:

{
  home.file.".config/hypr/keybindings.conf".text = ''

###################
### KEYBINDINGS ###
###################

# See https://wiki.hyprland.org/Configuring/Keywords/
$mainMod = SUPER # Sets "Windows" key as main modifier
$subMod = LALT  # Sets "right alt" key as extend modifier
#$extend = CAPS

# Set programs that you use
$terminal = kitty
$fileManager = dolphin
$editor = code
$browser = firefox
$menu = wofi --show drun
#           _                 _ 
#  _____  _| |_ ___ _ __   __| |
# / _ \ \/ / __/ _ \ '_ \ / _` |
#|  __/>  <| ||  __/ | | | (_| |
# \___/_/\_\\__\___|_| |_|\__,_|
#                               
bind = $subMod, Space, exec, $menu

# Scroll through existing workspaces with mainMod + scroll
bind = $subMod, I, workspace, e+1
bind = $subMod, N, workspace, e-1


# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more

bind = $mainMod, R, exec, $menu
bind = $mainMod, T, exec, $terminal
bind = $mainMod, C, exec, $editor # launch text editor
bind = $mainMod, F, exec, $browser # launch web browser
bind = $mainMod, Q, killactive,
bind = $mainMod, M, fullscreen,
bind = $mainMod, Delete, exit, # kill hyprland session
bind = $mainMod, D, exec, $fileManager
bind = $mainMod, V, togglefloating,
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

bind = $mainMod, N, movefocus, l
bind = $mainMod, I, movefocus, r
bind = $mainMod, U, movefocus, u
bind = $mainMod, E, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1



# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

# Laptop multimedia keys for volume and LCD brightness
bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
bindel = ,XF86MonBrightnessUp, exec, brightnessctl s 10%+
bindel = ,XF86MonBrightnessDown, exec, brightnessctl s 10%-

# Requires playerctl
bindl = , XF86AudioNext, exec, playerctl next
bindl = , XF86AudioPause, exec, playerctl play-pause
bindl = , XF86AudioPlay, exec, playerctl play-pause
bindl = , XF86AudioPrev, exec, playerctl previous

''; 
}


