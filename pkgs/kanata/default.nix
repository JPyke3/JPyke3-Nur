{ stdenv, fetchurl, pkgs ? import <nixpkgs> {} }:
stdenv.mkDerivation rec {
  pname = "kanata-bin";
  version = "1.6.1";

  src = pkgs.fetchurl {
	url = "https://github.com/jtroo/kanata/releases/download/v${version}/kanata_macos_arm64";
	sha256 = "sha256-6gYIItqnDAKjTCsuqF81qmvaYpYLJ5ipetKo7lXvR/Y=";
  };

  phases = [ "installPhase" ];

  sourceRoot = ".";

  installPhase = ''
	mkdir -p $out/bin
	cp $src $out/bin/kanata
	chmod +x $out/bin/kanata
  '';
}
