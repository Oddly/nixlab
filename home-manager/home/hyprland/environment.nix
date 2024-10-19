{ pkgs, ... }:

{
  home.file.".config/hypr/environment.conf".text = ''

#############################
### ENVIRONMENT VARIABLES ###
#############################

# See https://wiki.hyprland.org/Configuring/Environment-variables/

env = XCURSOR_SIZE,24
env = HYPRCURSOR_SIZE,24

'';

}


