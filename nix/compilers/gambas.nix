{ stdenv
, fetchurl 
, autoconf
, automake
, libtool
}:
stdenv.mkDerivation {
  pname = "gambas";
  version = "3.15.2";

  src = fetchurl {
    url = "https://gitlab.com/gambas/gambas/-/archive/3.15.2/gambas-3.15.2.tar.bz2";
    sha256 = "0z5ksflbfrqddz1qwpxhxs690d8zvkiabfs6yvzx45ckdgsdbg33";
  };

  buildInputs = [
    autoconf
    automake
    libtool
  ];

  preConfigurePhases = [ "reconfPhase" ];

  reconfPhase = ''
    ./reconf-all
  '';

}
