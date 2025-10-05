# Nix Proxy Flake

A Nix flake to proxy and manage the inputs of other flakes. This helps in keeping the inputs consistent across multiple flakes.

## Usage

To use this flake, add it as an input to your flake.nix file:

```nix
{
  inputs = {
    nix-proxy-flake.url = "github:dli50/nix-proxy-flake";

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

## Outputs

This flake does not provide any outputs itself. It is intended to be used as a proxy for the inputs of other flakes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
