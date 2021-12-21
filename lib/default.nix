{ nixpkgs, darwin, ... }:

let
  lib = rec {
    merge = x: y: x // y;

    callPackage = path: overrides:
      let
        fn = import path;
        defaultArgs = nixpkgs // {
          inherit darwin nixpkgs;
          lib = nixpkgs.lib // lib;
        };
        args = builtins.intersectAttrs (builtins.functionArgs fn) defaultArgs;
      in
        fn (args // overrides);

    mkDarwin = name: arch:
      let
        machine = callPackage (../darwin + "/machines/${name}.nix") {};
        presets = builtins.map
          (name: callPackage (../darwin + "/presets/${name}.nix") {})
          machine.presets;
      in  {
        "${name}" = darwin.lib.darwinSystem {
          system = arch;
          modules = presets ++ [ machine.config ];
          inputs = { inherit nixpkgs darwin; };
        };
      };
  };
in
  nixpkgs.lib // lib
