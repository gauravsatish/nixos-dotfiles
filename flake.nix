{
    description = "gaurav's dotfiles";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-25.11";
        zen-browser.url = "github:youwen5/zen-browser-flake";
    };

    outputs = { 
        self,
        nixpkgs,
        ...
    }:
    let
        lib = nixpkgs.lib;
    in {
        nixosConfigurations = {
            nixos-p1 = lib.nixosSystem {
                system = "x86_64-linux";
                modules = [ ./configuration.nix ];
            };
        };
    };
}