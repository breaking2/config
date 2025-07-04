{ pkgs, ... }:
{
  imports = [
    ./config/nvim
    ./config/commands.nix
    ./config/firefox.nix
    ./config/fonts.nix
    ./config/git.nix
    ./config/starship.nix
    ./config/yazi.nix
    ./config/zsh.nix
  ];
  # Install pkgs
  home.packages = with pkgs; [
    # AppImage
    appimage-run

    # Editor
    nano
    vscode

    # Claude
    claude-code

    # Password Manager
    bitwarden-desktop

    # Http Client
    httpie

    # for devShell
    nix-direnv
    direnv

    # make
    gnumake
  ];
}
