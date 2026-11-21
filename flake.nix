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
    ppad-base64 = {
      type = "git";
      url  = "git://git.ppad.tech/base64.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
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
    ppad-random = {
      type = "git";
      url  = "git://git.ppad.tech/random.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-chacha.follows = "ppad-chacha";
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
      inputs.ppad-hmac-drbg.follows = "ppad-hmac-drbg";
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
    ppad-tx = {
      type = "git";
      url  = "git://git.ppad.tech/tx.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-bolt1 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt1.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
    };
    ppad-bolt2 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt2.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-bolt1.follows = "ppad-bolt1";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
      inputs.ppad-tx.follows = "ppad-tx";
    };
    ppad-bolt3 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt3.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
      inputs.ppad-ripemd160.follows = "ppad-ripemd160";
      inputs.ppad-bolt1.follows = "ppad-bolt1";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-tx.follows = "ppad-tx";
    };
    ppad-bolt4 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt4.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-aead.follows = "ppad-aead";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-chacha.follows = "ppad-chacha";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-hmac-drbg.follows = "ppad-hmac-drbg";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-bolt1.follows = "ppad-bolt1";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
    };
    ppad-bolt5 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt5.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
      inputs.ppad-ripemd160.follows = "ppad-ripemd160";
      inputs.ppad-tx.follows = "ppad-tx";
      inputs.ppad-bolt3.follows = "ppad-bolt3";
      inputs.ppad-fixed.follows = "ppad-fixed";
      inputs.ppad-bolt1.follows = "ppad-bolt1";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
    };
    ppad-bolt7 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt7.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-bolt1.follows = "ppad-bolt1";
      inputs.ppad-sha256.follows = "ppad-sha256";
      inputs.ppad-bolt9.follows = "ppad-bolt9";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
    };
    ppad-bolt8 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt8.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-aead.follows = "ppad-aead";
      inputs.ppad-base16.follows = "ppad-base16";
      inputs.ppad-hkdf.follows = "ppad-hkdf";
      inputs.ppad-secp256k1.follows = "ppad-secp256k1";
      inputs.ppad-sha256.follows = "ppad-sha256";
    };
    ppad-bolt9 = {
      type = "git";
      url  = "git://git.ppad.tech/bolt9.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-eproc = {
      type = "git";
      url  = "git://git.ppad.tech/eproc.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-random.follows = "ppad-random";
    };
    ppad-censor = {
      type = "git";
      url  = "git://git.ppad.tech/censor.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
      inputs.ppad-eproc.follows = "ppad-eproc";
    };
    vestigia = {
      type = "git";
      url  = "git://git.ppad.tech/vestigia.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    ppad-lmdb = {
      type = "git";
      url  = "git://git.ppad.tech/lmdb.git";
      ref  = "master";
      inputs.ppad-nixpkgs.follows = "ppad-nixpkgs";
    };
    flake-utils.follows = "ppad-nixpkgs/flake-utils";
    nixpkgs.follows = "ppad-nixpkgs/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        lib = pkgs.lib;
        hlib = pkgs.haskell.lib;

        # every package on the site, under its landing page heading
        groups = [
          { title = "Constant-time toolchain";
            packages = [ "ppad-censor" "vestigia" "ppad-eproc" ];
          }
          { title = "Cryptography";
            packages = [
              "ppad-fixed" "ppad-sha256" "ppad-sha512" "ppad-ripemd160"
              "ppad-chacha" "ppad-poly1305" "ppad-aead" "ppad-hkdf"
              "ppad-pbkdf" "ppad-hmac-drbg" "ppad-random"
              "ppad-secp256k1" "ppad-csecp256k1" "ppad-bip32" "ppad-bip39"
            ];
          }
          { title = "Encoding";
            packages = [
              "ppad-base16" "ppad-base58" "ppad-base64" "ppad-bech32"
            ];
          }
          { title = "Bitcoin and Lightning";
            packages = [
              "ppad-script" "ppad-tx"
              "ppad-bolt1" "ppad-bolt2" "ppad-bolt3" "ppad-bolt4"
              "ppad-bolt5" "ppad-bolt7" "ppad-bolt8" "ppad-bolt9"
            ];
          }
          { title = "Other";
            packages = [ "ppad-lmdb" ];
          }
        ];

        names = lib.concatMap (g: g.packages) groups;

        # the directory a package is served from
        dir = lib.removePrefix "ppad-";

        hpkgs = pkgs.haskell.packages.ghc910.extend (new: old:
          lib.genAttrs (lib.filter (lib.hasPrefix "ppad-") names) (name:
            hlib.dontCheck inputs.${name}.packages.${system}.default)
          // {
            # vestigia's default package is its wrapped command; the
            # Haskell package, with its haddock, is in its nix/lib.nix
            vestigia = hlib.dontCheck
              (import "${inputs.vestigia}/nix/lib.nix" {
                inherit pkgs;
              }).hpkgs.vestigia;
          });

        docpath = name:
          let doc = hpkgs.${name}.doc;
          in  "${doc}/share/doc/${name}-${hpkgs.${name}.version}/html";

        docs = pkgs.linkFarm "docs.ppad.tech"
          (map (name: { name = dir name; path = docpath name; }) names);

        # each interface is read from its copy in $out, so the combined
        # contents, indexes, and search link to it relative to the root
        interfaces = lib.concatMapStringsSep " " (name:
          "--read-interface=${dir name},$out/${dir name}/${name}.haddock")
          names;

        landing = import ./landing.nix {
          inherit lib groups dir hpkgs;
          inherit (pkgs) writeText;
        };

        # an input left out of groups would be left off the site
        served = lib.subtractLists
          [ "self" "nixpkgs" "flake-utils" "ppad-nixpkgs" ]
          (builtins.attrNames inputs);
      in
        assert lib.assertMsg
          (builtins.sort builtins.lessThan served
            == builtins.sort builtins.lessThan names)
          "each package input must appear exactly once in groups";
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
                --title=ppad ${interfaces}

              mv $out/index.html $out/modules.html
              cp ${landing} $out/index.html
            '';

            fixupPhase = ''
              # rewrite nix store paths to relative paths for ppad-* deps
              for f in $(find $out -name "*.html"); do
                sed -i 's|file:///nix/store/[^/]*/share/doc/ppad-\([a-z0-9-]*\)-[0-9][0-9.]*/html/|../\1/|g' "$f"
              done
            '';
          };
        }
      );
}
