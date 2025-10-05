{
  description = "A proxy flake for controlling the inputs of all my flakes";

  outputs = _: { };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
}
