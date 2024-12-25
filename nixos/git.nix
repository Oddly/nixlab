{
  config,
  lib,
  pkgs,
  ...
}: {
  # Other configuration...
  programs.git = {
    enable = true;
    config = {
      user.name = "sam";
      user.email = "sam.crauwels@gmail.com";
      core.editor = "nvim";
      init.defaultBranch = "main";
    };
  };

}
