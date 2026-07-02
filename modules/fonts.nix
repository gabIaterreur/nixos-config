{ config, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      inter
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf
      source-sans-pro
      source-serif-pro
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [ "Source Serif Pro" "Noto Serif"];
        sansSerif = [ "Inter" "Noto Sans"];
        monospace = [ "JetBrainsMono Nerd Font" "Fira Code"];
        emoji = [ "Noto Color Emoji" ];
      };
      hinting.style = "slight";
      subpixel.rgba = "rgb";
    };
  };
}
