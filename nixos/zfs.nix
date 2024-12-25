{ config, lib, pkgs, ... }:
{
  boot = {
    kernelParams = [ "zfs.zfs_arc_max=137438953472" ]; # ZFS ARC
    supportedFilesystems = [ "zfs" ];
#    zfs.extraPools = [ "vmpool" "vmpool/vms" ];
#    zfs.forceImportRoot = false;
  };

#  fileSystems."/vmpool/vms" = {
#    device = "vmpool/vms";
#    fsType = "zfs";
#  };

  services.zfs = {
    autoScrub.enable = true;
    autoSnapshot = {
      enable = true;
      frequent = 4;
      hourly = 7;
      daily = 6;
      weekly = 2;
      monthly = 1;
    };
  };
}
