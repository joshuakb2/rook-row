{
  description = "My rook-row script and completions";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = import ./default.nix nixpkgs.legacyPackages.x86_64-linux;
  };
}
