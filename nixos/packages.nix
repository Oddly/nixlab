{
  config,
  lib,
  pkgs,
  ...
}: {

  #  nix.nixPath = ["nixpkgs=${inputs.nixpkgs}"];

  # Installed System Packages
  environment.systemPackages = with pkgs; [
    # CLI Utilities
    bash
    bridge-utils
    dnsutils
    nvme-cli
    pciutils
    rsync
    tree
    wget # Download tool (better for resuming downloads)
    curl # Download tool (supports more protocols)
    zoxide # Z directory jumper for easier navigation
    eza
    fzf # Fuzzy finder for terminal
    bat # Enhanced 'cat' with syntax highlighting
    htop
    btop
    gtop
    parted
    tldr
    man
    man-pages
    killall
    ripgrep
    syncthing
  ];

}
