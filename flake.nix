{
  description = "My First Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";

    home-manager.url = "github:nix-community/home-manager";

  };

  outputs =
    { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        desktop = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix home-manager.nixosModules.home-manager ];
        };
      };
    };
}
