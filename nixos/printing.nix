{ config, lib, pkgs, ... }:

{
  # Enable CUPS to print documents.
  services.printing.enable = true;
}

