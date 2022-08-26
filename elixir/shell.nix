{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    elixir
    erlang
    inotify-tools
  ];
}
