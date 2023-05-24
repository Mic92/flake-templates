with import <nixpkgs> {};
mkShell {
  packages = [
    bashInteractive
    cargo
    rustc
    rust-analyzer
  ];
}
