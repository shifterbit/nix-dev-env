{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    clojure
    leiningen
    openjdk
    boot
    clojure-lsp
  ];
}
