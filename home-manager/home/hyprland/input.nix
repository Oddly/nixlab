{ pkgs, ... }:

{
  home.file.".config/hypr/input.conf".text = ''

#############
### INPUT ###
#############

# https://wiki.hyprland.org/Configuring/Variables/#input
input {
    kb_layout=us,us,fr
    kb_variant=colemak_dh,
    repeat_rate=40
    repeat_delay=600
    kb_options = caps:escape,grp:win_space_toggle,shift:both_capslock_cancel,compose:102
    #kb_rules =

    follow_mouse =1
  
    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

    touchpad {
        natural_scroll = true
    }
}

# https://wiki.hyprland.org/Configuring/Variables/#gestures
gestures {
    workspace_swipe = true
}

# Example per-device config
# See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
device {
    name = epic-mouse-v1
    sensitivity = -0.5
}

''; 
}

