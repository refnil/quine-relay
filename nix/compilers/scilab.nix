{ stdenv, fetchurl, makeWrapper }:
let scilab_nixpkgs = fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/19.03.tar.gz";
      sha256 = "0q2m2qhyga9yq29yz90ywgjbn9hdahs7i8wwlq7b55rdbyiwa5dy";
    };
    pkgs = import scilab_nixpkgs {};
    scilab-bin = pkgs.scilab-bin;
    scilab = stdenv.mkDerivation {
      inherit (scilab-bin) name;
      src = ./.;
      dontUnpack = true;

      buildInputs = [ makeWrapper ];

      installPhase = ''
        install -d $out/bin
        makeWrapper ${scilab-bin}/bin/scilab-adv-cli $out/bin/scilab-cli
      '';
    };
in scilab


