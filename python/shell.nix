{ pkgs ? import <nixpkgs> {} }:
let
  python-packages = ps: with ps; [
    pandas
    numpy
    requests
    # other python packages
  ];
in pkgs.mkShell {
    packages = [ (python3.withPackages python-packages)];
  }
