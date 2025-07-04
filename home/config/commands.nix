{ pkgs, ... }:
{
  home.packages = with pkgs; [
    curl
    wget
    fastfetch
    bottom
    eza
    zoxide
    bat
    fd
    procs
    tldr
    delta
    parted
    gparted
    zip
    unzip
    dust
    mcfly
    rename
    #tty-clock: https://zenn.dev/nukokoi/articles/539017fa274cf4
    tty-clock
    nkf
    tdf
    #nurl: https://github.com/nix-community/nurl
    nurl
    #xclip: https://kazuhira-r.hatenablog.com/entry/2023/07/31/000525
    xclip
    glow
    # ネタコマンド
    lolcat
    cowsay
  ];
}
