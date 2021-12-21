{}: { pkgs, ...}:

{
  # Use the nix daemon since we're on macOS
  services.nix-daemon.enable = true;


  # Nix setup
  nix = {
    # Enable flake support
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # Use zsh as the shell
  programs.zsh.enable = true;

  # System packages
  # Search using: nix search nixpkgs 'package-name'
  environment.systemPackages = with pkgs; [
    vim
    curl
    wget
    neovim
    home-manager
    spaceship-prompt
  ];

  # Fonts
  # Let nix-darwin manage fonts in /Library/Fonts
  fonts.enableFontDir = true;
  # Install fonts for the system
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "Hack" ]; })
  ];

  # System configuration
  # Don't show the dock unless moused over
  system.defaults.dock.autohide = true;

  # Don't show the top bar unless moused over
  system.defaults.NSGlobalDomain._HIHideMenuBar = true;

  # Enable custom key mappings
  system.keyboard.enableKeyMapping = true;

  # Replace caps lock with escape. More convenient in vim
  system.keyboard.remapCapsLockToEscape = true;

  # Finder doesn't show extensions by default
  system.defaults.finder.AppleShowAllExtensions = true;

  # Don't warn when changing file extensions
  system.defaults.finder.FXEnableExtensionChangeWarning = false;


  # Enable full keyboard access
  system.defaults.NSGlobalDomain.AppleKeyboardUIMode = 3;

  # Disable the hold-to-select-character popup
  system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled = false;

  # Fix key repeat so it works properly
  system.defaults.NSGlobalDomain.InitialKeyRepeat = 10;
  system.defaults.NSGlobalDomain.KeyRepeat = 1;

  # Disable autocorrect
  system.defaults.NSGlobalDomain.NSAutomaticCapitalizationEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticDashSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticPeriodSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticQuoteSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled = false;

  # Don't hide scrollbars
  system.defaults.NSGlobalDomain.AppleShowScrollBars = "Always";
}
