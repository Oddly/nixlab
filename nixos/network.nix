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
      "10-microvm" = {
        netdevConfig = {
          Name = "microvm";
          Kind = "bridge";
        };
      };
    };
    networks = {
      "10-microvm" = {
        matchConfig.Name = "microvm";
        networkConfig = {
          Address = [ "10.1.0.2/32" ];
          DHCPServer = true;
          #IPv6SendRA = true;
        };
        addresses = [ {
          addressConfig.Address = "10.1.0.1/24";
        } ];
      };
      "microvm-eth0" = {
        matchConfig.Name = "microvm-*";
        networkConfig.Bridge = "microvm";
      };
    };
    wait-online.enable = false;
  };
  networking = {
     # host network options
     hostId = "390cfe40";
     hostName = "nixhost";
     nat = {
       enable = true;
       enableIPv6 = true;
       externalInterface = "eno1";
       internalInterfaces = [ "microvm" ];
     };
     useNetworkd = true;
  };


}
