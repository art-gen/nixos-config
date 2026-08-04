{ config, pkgs, ... }:

{
  home.username = "art";
  home.homeDirectory = "/home/art";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    hello
    vscode
    kitty
    kdePackages.kate
    lazygit
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
