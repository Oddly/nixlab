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

  system.stateVersion = "24.05"; # Did you read the comment?


}


