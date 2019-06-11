# nixos_ec2_config

Steps to use this configuration on a new AWS machine:

1. log in as root

2. run `nix-env -iA nixos.git`

3. run `rm -rf /etc/nixos`

4. run `git clone https://github.com/mdtisdall/nixos_ec2_config.git /etc/nixos`

5. run `nixos-rebuild switch`
