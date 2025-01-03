{
  config, lib, pkgs, ... }:
{
  boot = {
    kernel.sysctl = {
      # IPv4 forwarding
      "net.ipv4.conf.all.forwarding" = true;
      # IPv6 forwarding
      "net.ipv6.conf.all.forwarding" = true;

      # By default, do not configure any IPv6 addresses.
      "net.ipv6.conf.all.accept_ra" = 0;
      "net.ipv6.conf.all.autoconf" = 0;
      "net.ipv6.conf.all.use_tempaddr" = 0;
    };
  };


  systemd.network = {
    enable = true;
    netdevs = {
      "20-br0" = {
        netdevConfig = {
          Name = "br0";
          Kind = "bridge";
        };
      };
    };
    networks = {
      "30-eno1" = {
        matchConfig.Name = "eno1";
	networkConfig.Bridge = "br0";
	linkConfig.RequiredForOnline = "enslaved";
      };
      "40-br0-dhcp" = {
        matchConfig.Name = "br0";
        networkConfig.DHCP= "ipv4";
      };
    };
  };
  networking = {
     # host network options
     hostId = "390cfe40";
     hostName = "nixhost";
  };


}
