{
  description = "Description for the project";

  outputs = { ... }: {
    templates = {
      nix-develop = ./nix-develop;
      nix-shell = ./nix-shell;
    };
  };
}
