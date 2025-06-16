{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts."m+"
    nerd-fonts.noto
  ];
}
