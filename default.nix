{pkgs ? import <nixpkgs> {}}:

pkgs.stdenv.mkDerivation {
  name = "xkb_tiny";
  src = ./.;
  installPhase = ''
    mkdir -p $out
    cp -a ./xkb $out/xkb
  '';
}
