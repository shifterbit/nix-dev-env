{pkgs ? import <nixpkgs> {}}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    nodejs
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];
}
