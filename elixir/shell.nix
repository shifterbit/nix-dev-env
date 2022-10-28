{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    elixir
    erlang
    inotify-tools
  ];
}
