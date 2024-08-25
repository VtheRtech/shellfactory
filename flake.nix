{
  description = "A basic flake with a shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        rix = pkgs.Rpackages.buildRpacakge {
            name = rix
            src = pkgs.fetchFromGitHub {
              owner = "b-rodrigues";
              repo = "rix";
              rev = "008e3d1ac579cbcd4de3b9a2315635c652b687bd";
              hash = "sha256-nrHHiHLYXehly0/qwhGvGmIgJrgyiW4kFIKJ1HvWQfg=";
            };
        propagatedBuildInputs = with pkgs.Rpackages; [tidyverse testthis devtools]
          };
      in {
        devShells.default = pkgs.mkShell { 
          packages = [ pkgs.bashInteractive ];
          buildInputs = with pkgs; [R pandoc]
          };
      }
    );
}
