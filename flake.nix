{
  description = "Configuration for NixOS and macOS systems.";

  inputs = {
    # nixpkgs unstable
    nixpkgs.url = "github:nixos/nixpkgs/master";

    # nix-darwin unstable
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, darwin }:
    let
      lib = (import ./lib) { inherit nixpkgs darwin; };
    in {
      darwinConfigurations =
        let
          systems = [
            (lib.mkDarwin "INTUL18ad4a5fb" "x86_64-darwin")
          ];
        in
          lib.foldl
            lib.merge
            {}
            systems;
    };
}
