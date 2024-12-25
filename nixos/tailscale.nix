{
  config, lib, pkgs, ... }:
{

  services.tailscale = {
    enable = true;
    useRoutingFeatures = "server";
    extraSetFlags = [
      "--advertise-exit-node"
      "--ssh"
      "--advertise-routes=10.1.0.0/16"
    ];
  };
  # Create the persistent directory
  systemd.tmpfiles.rules = [
    "d /persist/var/lib/tailscale 0755 root root -"
  ];
  # Persist the Tailscale directory by binding it to another location.
  systemd.services.tailscaled.serviceConfig.BindPaths = "/persist/var/lib/tailscale:/var/lib/tailscale";

}
