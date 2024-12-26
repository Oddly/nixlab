{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Uncomment if you plan to use disko for disk management
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    #stylix.url = "github:danth/stylix";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    # kmonad,
    disko,
    # stylix,
    ...
  }: {
    nixosConfigurations.mysystem = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./nixos/configuration.nix
        disko.nixosModules.disko
        # stylix.nixosModules.stylix
        #agenix.nixosModules.age
        #kmonad.nixosModules.default
        #home-manager.nixosModules.home-manager
        {
          #home-manager.useGlobalPkgs = true;
          #home-manager.useUserPackages = true;
          #home-manager.users.titanknis = import ./home-manager/home.nix;

          # Optionally pass arguments to home.nix
          # home-manager.extraSpecialArgs = {
          #   # Add your special arguments here
          # };

          # Maintain compatibility with the original NixOS version
          system.stateVersion = "24.05"; # Keep original NixOS state version
        }
      ];
    };
  };
}
