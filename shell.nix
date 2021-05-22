with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "updater-rust";
    buildInputs = [ gcc openssl pkg-config ];
}
