{
  disko.devices = {
    disk = {
      main = {
        device = "/dev/nvme12n1";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              type = "EF00";
              size = "1G";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
          primary = {
            size = "100%";
            content = {
              type = "lvm_pv";
              vg = "vg0";
              };
            };
          };
        };
      };
      sata0 = {
        type = "disk";
	device = "/dev/disk/by-id/ata-WDC_WUH721818ALE6L4_3FHZBJWT";
	content = {
	  type = "zfs";
	  pool = "hddpool";
	};
      };
      sata1 = {
        type = "disk";
	device = "/dev/disk/by-id/ata-WDC_WUH721818ALE6L4_4BKL4W2H";
	content = {
	  type = "zfs";
	  pool = "hddpool";
	};
      };
      nvme0 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630574237190025384e00000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme1 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019080025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme2 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019150025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme3 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630574237010025384e00000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme4 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019070025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme5 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019110025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme6 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019120025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme7 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019160025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme8 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019140025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme9 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577014330025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme10 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630577019100025384300000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
      nvme11 = {
      	type = "disk";
	device = "/dev/disk/by-id/nvme-eui.36344630574237180025384e00000001";
	content = {
	  type = "zfs";
	  pool = "vmpool";
	};
      };
    };
# Filesystems
    lvm_vg = {
      vg0 = {
        type = "lvm_vg";
        lvs = {
          root = {
            size = "128G";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
            };
          };
          home = {
            size = "128G";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/home";
            };
          };
          swap = {
            size = "20G";
            content = {
              type = "swap";
              discardPolicy = "both";
              resumeDevice = true; # resume from hiberation from this device
            };
          };
        };
      };
    };
    zpool = {
      vmpool =  {
      	type = "zpool";
	  mode = {
	    topology = {
	      type = "topology";
	      vdev = [
	        {
	          mode = "raidz2";
	          members = [ "nvme0" "nvme1" "nvme2" "nvme3" "nvme4" "nvme5" ];
	        }
	        {
	          mode = "raidz2";
	          members = [ "nvme6" "nvme7" "nvme8" "nvme9" "nvme10" "nvme11" ];
	        }
	      ];
            };
          };
	  rootFsOptions.compression = "zstd";

	  mountpoint = "/vmpool";

	  datasets = {
	    vms = {
	      type = "zfs_fs";
	      mountpoint = "/vmpool/vms";
	    };
	  };
      };
      hddpool =  {
      	type = "zpool";
        mode = "mirror"; 
	rootFsOptions.compression = "zstd";
	mountpoint = "/hddpool";
	datasets = {
	  backup = {
	    type = "zfs_fs";
	    mountpoint = "/hddpool/backup";
	  };
	};
      };
    };
  };
}
