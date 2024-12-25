{
  config,
  lib,
  pkgs,
  ...
}: {
  nix = {
    package = pkgs.nixVersions.stable;
    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = [ "root" ];
    };
    channel.enable = false;
  };
}
