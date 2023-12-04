{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python310
    pkgs.python310Packages.virtualenv
  ];

  shellHook = ''
    python -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
  '';
}