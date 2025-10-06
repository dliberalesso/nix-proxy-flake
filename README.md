# Nix Proxy Flake

A Nix flake to proxy and manage the inputs of other flakes. This helps in keeping the inputs consistent across multiple flakes.

## Usage

To use this flake, add it as an input to your flake.nix file:

```nix
{
  inputs = {
    nix-proxy-flake.url = "github:dliberalesso/nix-proxy-flake";

    nixpkgs.follows = "nix-proxy-flake/nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    # Your flake outputs
  };
}
```

## Inputs

This flake provides the following inputs:

- `nixpkgs`: The unstable branch of the NixOS/nixpkgs repository.
- `nixpkgs-lib`: The `lib` directory from the unstable branch of the NixOS/nixpkgs repository.
- `flake-compat`: A compatibility layer for flakes.
- `flake-parts`: A library for composing flakes.
- `flake-root`: A library for finding the root of a flake.
- `git-hooks`: A tool for managing git hooks.
- `gitignore`: A tool for managing `.gitignore` files.
- `nix-src`: Source for [Determinate Nix][det-nix].
- `treefmt-nix`: A tool for formatting Nix code.

## Outputs

This flake does not provide any outputs itself. It is intended to be used as a proxy for the inputs of other flakes.

## Development Guidelines

For information on build, lint, test, code style, naming conventions, and error handling, please see the [development guidelines](AGENTS.md).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

[det-nix]: https://docs.determinate.systems/determinate-nix
