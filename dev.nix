{ config, pkgs, ... }:
{ 
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    awscli
  ];
}

