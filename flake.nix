{
  description = "Basic Development Shells";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    devShells.x86_64-linux.nodejs = pkgs.callPackage ./nodejs/shell.nix {};
    devShells.x86_64-linux.haskell = pkgs.callPackage ./haskell/shell.nix {};
    devShells.x86_64-linux.elixir = pkgs.callPackage ./elixir/shell.nix {};
    devShells.x86_64-linux.clojure = pkgs.callPackage ./clojure/shell.nix {};
    devShells.x86_64-linux.go = pkgs.callPackage ./go/shell.nix {};
    devShells.x86_64-linux.python = pkgs.callPackage ./python/shell.nix {};

    templates = {
      haskell = {
        path = ./haskell;
        description = "Basic Haskell Devshell";
      };
      nodejs = {
        path = ./nodejs;
        description = "Basic Node.js Devshell";
      };
      elixir = {
        path = ./elixir;
        description = "Basic Elixir Devshell";
      };
      clojure = {
        path = ./clojure;
        description = "Basic Clojure Devshell";
      };
      go = {
        path = ./go;
        description = "Basic Go Devshell";
      };
      python = {
        path = ./go;
        description = "Basic Python Devshell";
      };
    };
  };
}
