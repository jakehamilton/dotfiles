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

    "alt - b : yabai -m space --balance"
  ];
}
