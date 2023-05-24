{
  description = "Description for the project";

  outputs = { ... }: {
    templates = {
      nix-develop.path = ./nix-develop;
      nix-shell.path = ./nix-shell;
      python.path = ./python;
      rust.path = ./rust;
    };
  };
}
