{ config, pkgs, ... }:

{
  home.username = "gablaterreur";
  home.homeDirectory = "/home/gablaterreur";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  # XDG
  xdg.enable = true;

  # Dotfiles
  xdg.configFile = {
    "hypr/hyprland.lua".source = ./dotfiles/hypr/hyprland.lua;
    "vim/vimrc".source = ./dotfiles/vim/vimrc;
  };
 
  # ZSH
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
  };

  # Git
  programs.git = {
    enable = true;
    settings = {
      user.name = "gablaterreur";
      user.email = "gabrieldistavolo@hotmail.com";
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };

  # Pkgs
  home.packages = with pkgs; [
    hyprland
    wofi
    waybar
    kitty
  ];
}


