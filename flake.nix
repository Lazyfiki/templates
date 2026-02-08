{
  description = "flake templates";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: let
    supportedSystems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    forEachSupportedSystem = f:
      nixpkgs.lib.genAttrs supportedSystems
        (system: f { inherit system; });
  in {
    devShells = forEachSupportedSystem ({ system }:
      let pkgs = import nixpkgs { inherit system; };
      in {
        default = pkgs.mkShell {
          packages = [ pkgs.nixfmt-rfc-style ];
        };
      });

    formatter = forEachSupportedSystem ({ system }:
      import nixpkgs { inherit system; }).nixfmt-rfc-style;

    templates = {
      default = {
        path = ./empty;
        description = "Empty starter template";
      };

      c = {
        path = ./c;
        description = "C/C++ project template";
      };

      java = {
        path = ./java;
        description = "Java project template";
      };

      latex = {
        path = ./latex;
        description = "LaTeX project template";
      };
    };
  };
}
