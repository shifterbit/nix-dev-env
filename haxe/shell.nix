{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    haxe
    hashlink
  ];
}
