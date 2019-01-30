{ config, pkgs, ... } :

{ 
  imports = [
    <nixpkgs/nixos/modules/virtualisation/amazon-image.nix>
    ./dylan.nix
    "${builtins.fetchTarball https://github.com/rycee/home-manager/archive/master.tar.gz}/nixos"
    ./dev.nix
  ];

  ec2.hvm = true;

  home-manager.users.dylan = import ./home-manager.nix { pkgs = pkgs; };
}
