{ config, pkgs, ... }:

{
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  	vim
    vim-plug
    wget
    curl
    git 
    htop
    unzip 
    zip 
	bat        
    tree
    ripgrep 
    man-pages 
    man-pages-posix 
    usbutils 
    pciutils 
    file 
    fd 
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  programs.dconf.enable = true;
  services.dbus.enable = true;
  security.polkit.enable = true;

  services.locate = {
    enable = true;
    package = pkgs.plocate;
  };

  services.openssh = {
    enable = true;
    settings =  {
      PasswordAuthentication = true;
      PermitRootLogin = "no";
    };
  };
}
