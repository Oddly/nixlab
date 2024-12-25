# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
      ./boot.nix
      ./disko.nix
      ./editor.nix
      ./firewall.nix
      ./git.nix
      ./hardware-configuration.nix
      ./locale.nix
      ./network.nix
      ./nix.nix
      ./tailscale.nix
      ./packages.nix
      ./services.nix
      ./shell.nix
      ./system.nix
      ./users.nix
      ./zfs.nix
    ];

  boot = {
#    kernelParams = [ "zfs.zfs_arc_max=137438953472" ]; # ZFS ARC
#    supportedFilesystems = [ "zfs" ];
#    zfs.extraPools = [ "vmpool" "vmpool/vms" ];
#    zfs.forceImportRoot = false;
  };
  
#  fileSystems."/vmpool/vms" = {
#    device = "vmpool/vms";
#    fsType = "zfs";
#  };

#  services.zfs = {
#    autoScrub.enable = true;
#    autoSnapshot = {
#      enable = true;
#      frequent = 4;
#      hourly = 7;
#      daily = 6;
#      weekly = 2;
#      monthly = 1;
#    };
#  };

  system.stateVersion = "24.05"; # Did you read the comment?


}


