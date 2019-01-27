{ config, pkgs, ... }:

{
  users.mutableUsers = true;
  users.users.dylan = {
    isNormalUser = true;
    home = "/home/dylan";
    description = "Dylan Tisdall";
    extraGroups = [ "wheel" "networkmanager" ];
  };

}
