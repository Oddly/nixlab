{ pkgs, ... }:

{
  home.file.".config/hypr/windowrules.conf".text = ''

##############################
### WINDOWS AND WORKSPACES ###
##############################

# See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
# See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

# Example windowrule v1
# windowrule = float, ^(kitty)$

# Example windowrule v2
# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$

windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

''; 
}


