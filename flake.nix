{
  description = "docs.ppad.tech";

  inputs = {
    ppad-nixpkgs = {
      type = "git";
      url  = "git://git.ppad.tech/nixpkgs.git";
      ref  = "master";
    };
    ppad-fixed = {
      type = "git";
      url  = "git://git.ppad.tech/fixed.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-sha256 = {
      type = "git";
      url  = "git://git.ppad.tech/sha256.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
    };
    ppad-sha512 = {
      type = "git";
      url  = "git://git.ppad.tech/sha512.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
    };
    ppad-ripemd160 = {
      type = "git";
      url  = "git://git.ppad.tech/ripemd160.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
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
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-hmac-drbg = {
      type = "git";
      url  = "git://git.ppad.tech/hmac-drbg.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-chacha = {
      type = "git";
      url  = "git://git.ppad.tech/chacha.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
    };
    ppad-poly1305 = {
      type = "git";
      url  = "git://git.ppad.tech/poly1305.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-base16.follows = "ppad-base16";
    };
    ppad-aead = {
      type = "git";
      url  = "git://git.ppad.tech/aead.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-chacha.follows = "ppad-chacha";
      inputs.ppad-poly1305.follows = "ppad-poly1305";
    };
    ppad-pbkdf = {
      type = "git";
      url  = "git://git.ppad.tech/pbkdf.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-hkdf = {
      type = "git";
      url  = "git://git.ppad.tech/hkdf.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-csecp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/csecp256k1.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-secp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/secp256k1.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
      inputs.ppad-hmac-drbg.follows = "ppad-hmac-drbg";
    };
    ppad-bip32 = {
      type = "git";
      url  = "git://git.ppad.tech/bip32.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-base58.follows = "ppad-base58";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-ripemd160.follows = "ppad-ripemd160";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
    };
    ppad-bip39 = {
      type = "git";
      url  = "git://git.ppad.tech/bip39.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-sha512.follows = "ppad-sha512";
      inputs.ppad-pbkdf.follows = "ppad-pbkdf";
      inputs.ppad-bip32.follows = "ppad-bip32";
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
            , ppad-fixed
            , ppad-sha256, ppad-sha512, ppad-ripemd160
            , ppad-bech32, ppad-base58, ppad-base16
            , ppad-hmac-drbg, ppad-hkdf, ppad-pbkdf
            , ppad-chacha, ppad-poly1305, ppad-aead
            , ppad-csecp256k1, ppad-secp256k1
            , ppad-script, ppad-bip32, ppad-bip39
            }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        hlib = pkgs.haskell.lib;

        hpkgs = pkgs.haskell.packages.ghc910.extend (new: old: {
          ppad-fixed = hlib.dontCheck ppad-fixed.packages.${system}.default;
          ppad-sha256 = hlib.dontCheck ppad-sha256.packages.${system}.default;
          ppad-sha512 = hlib.dontCheck ppad-sha512.packages.${system}.default;
          ppad-base58 = hlib.dontCheck ppad-base58.packages.${system}.default;
          ppad-base16 = hlib.dontCheck ppad-base16.packages.${system}.default;
          ppad-bech32 = hlib.dontCheck ppad-bech32.packages.${system}.default;
          ppad-ripemd160 = hlib.dontCheck
            ppad-ripemd160.packages.${system}.default;
          ppad-aead = hlib.dontCheck ppad-aead.packages.${system}.default;
          ppad-chacha = hlib.dontCheck
            ppad-chacha.packages.${system}.default;
          ppad-poly1305 = hlib.dontCheck
            ppad-poly1305.packages.${system}.default;
          ppad-hmac-drbg = hlib.dontCheck
            ppad-hmac-drbg.packages.${system}.default;
          ppad-hkdf = hlib.dontCheck ppad-hkdf.packages.${system}.default;
          ppad-pbkdf = hlib.dontCheck ppad-pbkdf.packages.${system}.default;
          ppad-csecp256k1 = hlib.dontCheck
            ppad-csecp256k1.packages.${system}.default;
          ppad-secp256k1 = hlib.dontCheck
            ppad-secp256k1.packages.${system}.default;
          ppad-script = hlib.dontCheck ppad-script.packages.${system}.default;
          ppad-bip32 = hlib.dontCheck ppad-bip32.packages.${system}.default;
          ppad-bip39 = hlib.dontCheck ppad-bip39.packages.${system}.default;
        });

        docpath = name:
          let doc = hpkgs.${name}.doc;
          in  "${doc}/share/doc/${name}-${hpkgs.${name}.version}/html";

        docs = pkgs.linkFarm "docs.ppad.tech" [
            { name = "fixed"; path = docpath "ppad-fixed"; }
            { name = "sha256"; path = docpath "ppad-sha256"; }
            { name = "sha512"; path = docpath "ppad-sha512"; }
            { name = "base58"; path = docpath "ppad-base58"; }
            { name = "base16"; path = docpath "ppad-base16"; }
            { name = "bech32"; path = docpath "ppad-bech32"; }
            { name = "ripemd160"; path = docpath "ppad-ripemd160"; }
            { name = "hmac-drbg"; path = docpath "ppad-hmac-drbg"; }
            { name = "aead"; path = docpath "ppad-aead"; }
            { name = "chacha"; path = docpath "ppad-chacha"; }
            { name = "poly1305"; path = docpath "ppad-poly1305"; }
            { name = "hkdf"; path = docpath "ppad-hkdf"; }
            { name = "pbkdf"; path = docpath "ppad-pbkdf"; }
            { name = "csecp256k1"; path = docpath "ppad-csecp256k1"; }
            { name = "secp256k1"; path = docpath "ppad-secp256k1"; }
            { name = "script"; path = docpath "ppad-script"; }
            { name = "bip32"; path = docpath "ppad-bip32"; }
            { name = "bip39"; path = docpath "ppad-bip39"; }
          ];

      in
        {
          packages.default = pkgs.stdenv.mkDerivation {
            name = "docs.ppad.tech";
            src = docs;
            buildInputs = [ hpkgs.cabal-install hpkgs.ghc pkgs.gnused ];

            buildPhase = ''
              mkdir -p $out
              for d in $(ls $src); do
                cp -rL $d $out/
              done

              cp -r ${hpkgs.ghc.doc} $out

              chmod -R u+w $out

              haddock -o "$out" --quickjump --gen-index --gen-contents \
                --read-interface=ppad-fixed,$src/fixed/ppad-fixed.haddock \
                --read-interface=ppad-sha256,$src/sha256/ppad-sha256.haddock \
                --read-interface=ppad-sha512,$src/sha512/ppad-sha512.haddock \
                --read-interface=ppad-ripemd160,$src/ripemd160/ppad-ripemd160.haddock \
                --read-interface=ppad-aead,$src/aead/ppad-aead.haddock \
                --read-interface=ppad-chacha,$src/chacha/ppad-chacha.haddock \
                --read-interface=ppad-poly1305,$src/poly1305/ppad-poly1305.haddock \
                --read-interface=ppad-hmac-drbg,$src/hmac-drbg/ppad-hmac-drbg.haddock \
                --read-interface=ppad-csecp256k1,$src/csecp256k1/ppad-csecp256k1.haddock \
                --read-interface=ppad-secp256k1,$src/secp256k1/ppad-secp256k1.haddock \
                --read-interface=ppad-bech32,$src/bech32/ppad-bech32.haddock \
                --read-interface=ppad-base58,$src/base58/ppad-base58.haddock \
                --read-interface=ppad-base16,$src/base16/ppad-base16.haddock \
                --read-interface=ppad-hkdf,$src/hkdf/ppad-hkdf.haddock \
                --read-interface=ppad-pbkdf,$src/pbkdf/ppad-pbkdf.haddock \
                --read-interface=ppad-script,$src/script/ppad-script.haddock \
                --read-interface=ppad-bip32,$src/bip32/ppad-bip32.haddock \
                --read-interface=ppad-bip39,$src/bip39/ppad-bip39.haddock
            '';

            fixupPhase = ''
              sed -i 's/href="ppad\-/href="/g' $out/index.html
              sed -i 's/href="ppad\-/href="/g' $out/doc-index.html

              # rewrite nix store paths to relative paths for ppad-* deps
              for f in $(find $out -name "*.html"); do
                sed -i 's|file:///nix/store/[^-]*-ppad-\([^-]*\)-[^/]*/share/doc/ppad-[^/]*/html/|../\1/|g' "$f"
              done
            '';
          };
        }
      );
}

