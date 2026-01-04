{ config, pkgs, ... }:

{
  home.username = "eduardo";
  home.homeDirectory = "/home/eduardo";

  # Programs specific to the 'stout' machine
  programs.git = {
    enable = true;
    userName = "Eduardo Schulz";
    userEmail = "";
  };

  # Example: Shell config
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake .#stout";
    };
  };

  home.stateVersion = "25.11";
}
