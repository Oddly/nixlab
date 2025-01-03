{
  pkgs,
  ...
}: {
  # Hyprland configuration
  # home.file.".config/hypr" = {
    # source = hyprland-config;
    # recursive = true;
  # };
  home.file.".config/hypr/appearance.conf".source = ./hypr/appearance.conf;
  home.file.".config/hypr/autostart.conf".source = ./hypr/autostart.conf;
  home.file.".config/hypr/environment.conf".source = ./hypr/environment.conf;
  home.file.".config/hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  home.file.".config/hypr/settings.conf".source = ./hypr/settings.conf;
  home.file.".config/hypr/input.conf".source = ./hypr/input.conf;
  home.file.".config/hypr/keybindings.conf".source = ./hypr/keybindings.conf;
  home.file.".config/hypr/monitors.conf".source = ./hypr/monitors.conf;
  home.file.".config/hypr/windowrules.conf".source = ./hypr/windowrules.conf;
}
