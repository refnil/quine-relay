{ stdenv, fetchurl }:
stdenv.mkDerivation {
  pname = "libGD";
  version = "2.3.0";
  src = fetchurl {
    url = "https://github.com/libgd/libgd/releases/download/gd-2.3.0/libgd-2.3.0.tar.gz";
    sha256 = "0hm3qsr0izhl4n0yw63vmqdw34hp0jq8li6j2lwwk9hy38v0wn9j";
  };
}
