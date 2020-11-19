{ stdenv, fetchurl }:
stdenv.mkDerivation {
  pname = "squirrel";
  version = "3.1";
  src = fetchurl {
    url = "https://github.com/albertodemichelis/squirrel/archive/v3.1.tar.gz";
    sha256 = "159gkdvfci4p7plpzynvpfczm5j9618cmwzc6hz6fyx97232p52i";
  };

  installPhase = ''
    install -d $out/bin
    cp bin/* $out/bin
    ln -s $out/bin/sq $out/bin/squirrel
    install -d $out/lib
    cp lib/* $out/lib
  '';
}
