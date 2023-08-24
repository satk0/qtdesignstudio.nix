{
  description = "Qt Design Studio";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: 
    let
      pname = "qtdesignstudio";
      version = "v2.3.1";

      pkgs = import nixpkgs { inherit system; config.pulseaudio=true;};

    in { 
        packages.default = pkgs.qt6Packages.callPackage ./. {inherit pname version; };
    }
  );
}

