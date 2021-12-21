{}:

{
  presets = [
    "common"
    "intuit"
    # Yabai requires disabling SIP (system integrity protection) which
    # likely won't fly with enterprise software. If that changes, re-enable
    # this preset to get a tiling window manager on macOS:
    # "tile"
  ];

  config = { pkgs, ... }: {
    # nix-darwin specific version
    # Read changelog before updating: darwin-rebuild changelog
    system.stateVersion = 4;
  };
}
