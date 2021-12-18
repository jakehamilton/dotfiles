{}:

{
  presets = [
    "common"
    "intuit"
    "tile"
  ];

  config = { pkgs, ... }: {
    # nix-darwin specific version
    # Read changelog before updating: darwin-rebuild changelog
    system.stateVersion = 4;
  };
}
