{
  inputs = {
    # nixpkgs
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nixvim
    # GitHub:https://github.com/dc-tec/nixvim
    nixvim.url = "github:dc-tec/nixvim";
  };

  outputs = inputs: {
    ## home-manager ##
    homeConfigurations = {
      breaking = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          system = "aarch64-linux";
          # Enable unfree pkgs
          config.allowUnfree = true;
        };
        extraSpecialArgs = {
          inherit inputs;
          username = "breaking";
        };
        modules = [
          ./home/home.nix
        ];
      };
    };
  };
}
