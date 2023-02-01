# flake templates

I often quickly want to get a development environment for different projects and
this repository provide me with the template for it:

This is what I have in my `~/.zshrc` to quickly add those templates to new projects:

```shell
nixify() {
  if [[ ! -e shell.nix ]] && [[ ! -e default.nix ]]; then
    nix flake new -t github:Mic92/flake-templates#nix-shell .
  elif [ ! -e ./.envrc ]; then
    echo "use nix" > .envrc
  fi
  direnv allow
  ${EDITOR:-vim} default.nix
}

flakify() {
  if [ ! -e flake.nix ]; then
    nix flake new -t github:Mic92/flake-templates#nix-develop .
  elif [ ! -e .envrc ]; then
    echo "use flake" > .envrc
  fi
  direnv allow
  ${EDITOR:-vim} flake.nix
}
```

Within the projects I run `nixify` or `flakify` to use these templates.
