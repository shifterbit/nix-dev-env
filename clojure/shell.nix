{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    clojure
    leiningen
    openjdk
    boot
    clojure-lsp
  ];
}
