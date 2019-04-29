{ config, pkgs, ... } :

{ 
  imports = [
    <nixpkgs/nixos/modules/virtualisation/amazon-image.nix>
    ./dylan.nix
    "${builtins.fetchTarball https://github.com/rycee/home-manager/archive/release-18.09.tar.gz}/nixos"
    ./dev.nix
  ];

  ec2.hvm = true;

  home-manager.users.dylan = import ./home-manager.nix { pkgs = pkgs; };
}
