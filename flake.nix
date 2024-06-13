{
  description = "cpp template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    flake-utils,
    nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        formatter = pkgs.nixpkgs-fmt;
        devShells.default = with pkgs;
          stdenv.mkDerivation {
            name = "cpp-env";
            nativeBuildInputs = [
              gcc13
              cmake
              ninja
              pkg-config
            ];
          };
      }
    );
}
