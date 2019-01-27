{ pkgs }:

{
  programs.git = {
    enable = true;
    userName = "Dylan Tisdall";
    userEmail = "mtisdall@pennmedicine.upenn.edu";
  };

  programs.vim = {
    enable = true;
  }
