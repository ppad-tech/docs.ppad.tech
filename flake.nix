# XX generate an index according to the following
#
# https://haskell-haddock.readthedocs.io/latest/multi-components.html
# https://github.com/coot/haddock-example

{
  description = "docs.ppad.tech";

  inputs = {
    ppad-sha256 = {
      type = "git";
      url  = "git://git.ppad.tech/sha256.git";
      ref  = "master";
    };
    ppad-sha512 = {
      type = "git";
      url  = "git://git.ppad.tech/sha512.git";
      ref  = "master";
    };
    ppad-ripemd160 = {
      type = "git";
      url  = "git://git.ppad.tech/ripemd160.git";
      ref  = "master";
    };
    ppad-bech32 = {
      type = "git";
      url  = "git://git.ppad.tech/bech32.git";
      ref  = "master";
    };
    ppad-base16 = {
      type = "git";
      url  = "git://git.ppad.tech/base16.git";
      ref  = "master";
    };
    ppad-base58 = {
      type = "git";
      url  = "git://git.ppad.tech/base58.git";
      ref  = "master";
    };
    ppad-hmac-drbg = {
      type = "git";
      url  = "git://git.ppad.tech/hmac-drbg.git";
      ref  = "master";
    };
    ppad-hkdf = {
      type = "git";
      url  = "git://git.ppad.tech/hkdf.git";
      ref  = "master";
    };
    ppad-csecp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/csecp256k1.git";
      ref  = "master";
    };
    ppad-secp256k1 = {
      type = "git";
      url  = "git://git.ppad.tech/secp256k1.git";
      ref  = "master";
    };
    flake-utils.follows = "ppad-sha256/flake-utils";
    nixpkgs.follows = "ppad-sha256/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils
            , ppad-sha256, ppad-sha512, ppad-ripemd160
            , ppad-bech32, ppad-base58, ppad-base16
            , ppad-hmac-drbg, ppad-hkdf
            , ppad-csecp256k1, ppad-secp256k1 }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        hlib = pkgs.haskell.lib;

        sha256 = ppad-sha256.packages.${system}.default;
        sha512 = ppad-sha512.packages.${system}.default;
        base58 = ppad-base58.packages.${system}.default;
        base16 = ppad-base16.packages.${system}.default;
        bech32 = ppad-bech32.packages.${system}.default;
        ripemd160 = ppad-ripemd160.packages.${system}.default;
        hmac-drbg = ppad-hmac-drbg.packages.${system}.default;
        hkdf = ppad-hkdf.packages.${system}.default;
        csecp256k1 = ppad-csecp256k1.packages.${system}.default;
        secp256k1 = ppad-secp256k1.packages.${system}.default;

        hpkgs = pkgs.haskell.packages.ghc981.extend (new: old: {
          ppad-sha256 = sha256;
          ppad-sha512 = sha512;
          ppad-base58 = base58;
          ppad-base16 = base16;
          ppad-bech32 = bech32;
          ppad-ripemd160 = ripemd160;
          ppad-hmac-drbg = hmac-drbg;
          ppad-hkdf = hkdf;
          ppad-csecp256k1 = csecp256k1;
          ppad-secp256k1 = secp256k1;
        });

        cc    = pkgs.stdenv.cc;
        ghc   = hpkgs.ghc;
        cabal = hpkgs.cabal-install;
      in
        {
          packages.default = hpkgs.ppad-sha256; # arbitrary

          packages.ppad-sha256 = hpkgs.ppad-sha256;
          packages.ppad-sha512 = hpkgs.ppad-sha512;
          packages.ppad-base58 = hpkgs.ppad-base58;
          packages.ppad-base16 = hpkgs.ppad-base16;
          packages.ppad-bech32 = hpkgs.ppad-bech32;
          packages.ppad-ripemd160 = hpkgs.ppad-ripemd160;
          packages.ppad-hmac-drbg = hpkgs.ppad-hmac-drbg;
          packages.ppad-hkdf = hpkgs.ppad-hkdf;
          packages.ppad-csecp256k1 = hpkgs.ppad-csecp256k1;
          packages.ppad-secp256k1 = hpkgs.ppad-secp256k1;

          devShells.default = hpkgs.shellFor {
            packages = p: [
              p.ppad-sha256
              p.ppad-sha512
              p.ppad-base58
              p.ppad-base16
              p.ppad-bech32
              p.ppad-ripemd160
              p.ppad-hmac-drbg
              p.ppad-hkdf
              p.ppad-csecp256k1
              p.ppad-secp256k1
            ];

            buildInputs = [
              cabal
              cc
            ];

            inputsFrom = builtins.attrValues self.packages.${system};

            shellHook = ''
              PS1="[docs.ppad.tech] \w$ "
              echo "entering ${system} shell, using"
              echo "cc:    $(${cc}/bin/cc --version)"
              echo "ghc:   $(${ghc}/bin/ghc --version)"
              echo "cabal: $(${cabal}/bin/cabal --version)"
            '';
          };
        }
      );
}

