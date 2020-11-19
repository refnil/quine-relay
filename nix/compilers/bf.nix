{ stdenv, fetchurl }:
stdenv.mkDerivation {
  pname = "bf";
  version = "20041219ubuntu6";

  src = fetchurl {
    url = "https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/bf/20041219ubuntu6/bf_20041219ubuntu6.tar.gz";
    sha256 = "0c40181149ec4892b7354acf313cf82776cd259aac3bea37b13189fe64b118ff";
  };

  installPhase = ''
    install -d "$out/bin"
    install bf "$out/bin"
  '';

}
