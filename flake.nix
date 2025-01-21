# XX generate an index according to the following
#
# https://haskell-haddock.readthedocs.io/latest/multi-components.html
# https://github.com/coot/haddock-example

{
  description = "docs.ppad.tech";

  inputs = {
    ppad-nixpkgs = {
      type = "git";
      url  = "git://git.ppad.tech/nixpkgs.git";
      ref  = "master";
    };
    ppad-sha256 = {
      type = "git";
      url  = "git://git.ppad.tech/sha256.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-sha512 = {
      type = "git";
      url  = "git://git.ppad.tech/sha512.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-ripemd160 = {
      type = "git";
      url  = "git://git.ppad.tech/ripemd160.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-bech32 = {
      type = "git";
      url  = "git://git.ppad.tech/bech32.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-base16 = {
      type = "git";
      url  = "git://git.ppad.tech/base16.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-base58 = {
      type = "git";
      url  = "git://git.ppad.tech/base58.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-hmac-drbg = {
      type = "git";
      url  = "git://git.ppad.tech/hmac-drbg.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-hkdf = {
      type = "git";
      url  = "git://git.ppad.tech/hkdf.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-csecp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/csecp256k1.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-secp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/secp256k1.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
      inputs.ppad-hmac-drbg.follows = "ppad-hmac-drbg";
    };
    ppad-script = {
      type = "git";
      url  = "git://git.ppad.tech/script.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
    };
    flake-utils.follows = "ppad-nixpkgs/flake-utils";
    nixpkgs.follows = "ppad-nixpkgs/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, ppad-nixpkgs
            , ppad-sha256, ppad-sha512, ppad-ripemd160
            , ppad-bech32, ppad-base58, ppad-base16
            , ppad-hmac-drbg, ppad-hkdf
            , ppad-csecp256k1, ppad-secp256k1
            , ppad-script
            }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        hlib = pkgs.haskell.lib;

        hpkgs = pkgs.haskell.packages.ghc981.extend (new: old: {
          ppad-sha256 = ppad-sha256.packages.${system}.default;
          ppad-sha512 = ppad-sha512.packages.${system}.default;
          ppad-base58 = ppad-base58.packages.${system}.default;
          ppad-base16 = ppad-base16.packages.${system}.default;
          ppad-bech32 = ppad-bech32.packages.${system}.default;
          ppad-ripemd160 = ppad-ripemd160.packages.${system}.default;
          ppad-hmac-drbg = ppad-hmac-drbg.packages.${system}.default;
          ppad-hkdf = ppad-hkdf.packages.${system}.default;
          ppad-csecp256k1 = ppad-csecp256k1.packages.${system}.default;
          ppad-secp256k1 = ppad-secp256k1.packages.${system}.default;
          ppad-script = ppad-script.packages.${system}.default;
        });

        docpath = name:
          let doc = hpkgs.${name}.doc;
          in  "${doc}/share/doc/${name}-${hpkgs.${name}.version}/html";

        docs = pkgs.linkFarm "docs.ppad.tech" [
            { name = "sha256"; path = docpath "ppad-sha256"; }
            { name = "sha512"; path = docpath "ppad-sha512"; }
            { name = "base58"; path = docpath "ppad-base58"; }
            { name = "base16"; path = docpath "ppad-base16"; }
            { name = "bech32"; path = docpath "ppad-bech32"; }
            { name = "ripemd160"; path = docpath "ppad-ripemd160"; }
            { name = "hmac-drbg"; path = docpath "ppad-hmac-drbg"; }
            { name = "hkdf"; path = docpath "ppad-hkdf"; }
            { name = "csecp256k1"; path = docpath "ppad-csecp256k1"; }
            { name = "secp256k1"; path = docpath "ppad-secp256k1"; }
            { name = "script"; path = docpath "ppad-script"; }
          ];

      in
        {
          packages.default = pkgs.stdenv.mkDerivation {
            name = "docs.ppad.tech";
            src = docs;
            buildInputs = [ hpkgs.cabal-install hpkgs.ghc pkgs.gnused ];

            # put ghc in here too
            buildPhase = ''
              mkdir -p $out
              for d in $(ls $src); do
                cp -rL $d $out/
              done

              haddock -o "$out" --quickjump --gen-index --gen-contents \
                --read-interface=ppad-sha256,$src/sha256/ppad-sha256.haddock \
                --read-interface=ppad-sha512,$src/sha512/ppad-sha512.haddock \
                --read-interface=ppad-ripemd160,$src/ripemd160/ppad-ripemd160.haddock \
                --read-interface=ppad-hmac-drbg,$src/hmac-drbg/ppad-hmac-drbg.haddock \
                --read-interface=ppad-csecp256k1,$src/csecp256k1/ppad-csecp256k1.haddock \
                --read-interface=ppad-secp256k1,$src/secp256k1/ppad-secp256k1.haddock \
                --read-interface=ppad-bech32,$src/bech32/ppad-bech32.haddock \
                --read-interface=ppad-base58,$src/base58/ppad-base58.haddock \
                --read-interface=ppad-base16,$src/base16/ppad-base16.haddock \
                --read-interface=ppad-hkdf,$src/hkdf/ppad-hkdf.haddock \
                --read-interface=ppad-script,$src/base16/ppad-script.haddock
            '';

            fixupPhase = ''
              sed -i 's/href="ppad\-/href="/g' $out/index.html
              sed -i 's/href="ppad\-/href="/g' $out/doc-index.html
            '';
          };
        }
      );
}

