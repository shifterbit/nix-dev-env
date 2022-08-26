{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    nodejs
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];
}
