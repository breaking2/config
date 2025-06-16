{ pkgs, inputs, ... }:
{
  imports = [
    ./config/ghostty
    ./config/nvim
    ./config/commands.nix
    ./config/firefox.nix
    ./config/git.nix
    ./config/nix-ld.nix
    ./config/starship.nix
    ./config/yazi.nix
    ./config/zsh.nix
  ];
  # Install pkgs
  home.packages = with pkgs; [
    # home-manager
    home-manager

    # VPN
    tailscale

    # AppImage
    appimage-run

    # Editor
    nano
    vscode

    # Claude
    claude-code

    # Input Method
    skktools

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
