{ sources ? import nix/sources.nix
, pkgs ? import sources.nixpkgs {} 
}:
let 
  compilers_path = ./nix/compilers; 
  compilers_content = builtins.readDir compilers_path;
  compilers_filename = builtins.attrNames compilers_content;
  compilers = map (name: pkgs.callPackage (compilers_path +  "/${name}") {}) compilers_filename;
in pkgs.mkShell {
  buildInputs = with pkgs; [
    cmake
    groff
    bison
    flex
    nodejs
    guile
    ruby
    rustc
    scala
  ] ++ compilers;
}
