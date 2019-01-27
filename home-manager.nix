{ pkgs }:

{

  programs.vim = {
    enable = true;
    plugins = [ "vim-airline" ];
  };

  programs.git = {
    enable = true;
    userName = "Dylan Tisdall";
    userEmail = "mtisdall@pennmedicine.upenn.edu";
    extraConfig.core.editor = "vim";
    extraConfig.diff.tool = "vimdiff";
    extraConfig.difftool.prompt = "false";
  };

  programs.home-manager.enable = true;
}
