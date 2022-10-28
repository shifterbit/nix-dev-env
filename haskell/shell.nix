{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    ghc
    stack
    haskell-language-server
    cabal-install
  ];
}
