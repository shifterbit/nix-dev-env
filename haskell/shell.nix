{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    ghc
    stack
    haskell-language-server
    cabal-install
  ];
}
