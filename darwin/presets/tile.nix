{ lib }: { pkgs, ... }:

let
  packages = [
    (lib.callPackage ../packages/skhd.nix { inherit pkgs; })
    (lib.callPackage ../packages/yabai.nix { inherit pkgs; })
    (lib.callPackage ../packages/spacebar.nix { inherit pkgs; })
  ];
in
  lib.mkMerge packages
