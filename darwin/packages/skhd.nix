{ pkgs }:

{
  environment.systemPackages = with pkgs; [
    skhd
  ];

  services.skhd.enable = true;
  services.skhd.skhdConfig = builtins.concatStringsSep "\n" [
    "alt - h : yabai -m window --focus west"
    "alt - j : yabai -m window --focus south"
    "alt - k : yabai -m window --focus north"
    "alt - l : yabai -m window --focus east"

    "shift + alt - h : yabai -m window --move west"
    "shift + alt - j : yabai -m window --move south"
    "shift + alt - k : yabai -m window --move north"
    "shift + alt - l : yabai -m window --move east"

    # "shift + alt - space : yabai -m window --toggle float"
  ];
}
