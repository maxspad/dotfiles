{ config, pkgs, ...}:

{
  home.username = "max";
  home.homeDirectory = "/home/max";
  home.stateVersion = "23.11";

  # let home-manager install and enable itself
  programs.home-manager.enable = true;
}
