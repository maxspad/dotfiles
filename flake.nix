{
  description = "My first flake";

  inputs = {
   nixpkgs.url = "nixpkgs/nixos-23.11";
   home-manager.url = "github:nix-community/home-manager/release-23.11";
   home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ...}:
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
       nixos = lib.nixosSystem {
         system = "aarch64-linux";
   	 modules = [ 
           ./configuration.nix 

           home-manager.nixosModules.home-manager {
             home-manager.useGlobalPkgs = true;
             home-manager.useUserPackages = true;

             home-manager.users.max = import ./home.nix;
           }
         ];
       };
      };
    };
}
