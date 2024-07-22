{ stdenv, ... }:
stdenv.mkDerivation {
  name = "rook-row";
  src = ./.;
  buildPhase = "true";
  installPhase = ''
    mkdir -p $out/share/bash-completion/completions
    cp completion $out/share/bash-completion/completions/rook-row

    mkdir -p $out/bin
    cp rook-row $out/bin/
  '';
}
