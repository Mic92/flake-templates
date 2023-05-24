with import <nixpkgs> {};
mkShell {
  packages = [
    bashInteractive
    black
    mypy
    ruff
  ];
}
