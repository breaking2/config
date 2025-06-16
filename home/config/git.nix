{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gh
    lazygit
  ];
  programs.git = {
    enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Myxogastria0808";
        email = "r.rstudio.c@gmail.com";
      };
      credential = {
        "https://github.com".helper = "!gh auth git-credential";
      };
    };
  };
}
