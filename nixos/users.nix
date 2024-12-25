{
  config,
  lib,
  pkgs,
  ...
}: {
  # User Configuration
  users.users.sam = {
    isNormalUser = true;
    home = "/home/sam";
    createHome = true;
    hashedPassword = "$6$dYI0vaLe8RPUlqvh$UwPuLkNjcovdIlyuXr9rVSTRmkcINixdb41h62DHxErMLUKN/RaK9XEbtQ1zs6Iy5iS0ifRB.7UCNpDpwugje0";
    description = "sam";
    extraGroups = ["wheel" "networkmanager" "libvirtd" "kvm"]; # Add user to sudo and other groups
  };
}
