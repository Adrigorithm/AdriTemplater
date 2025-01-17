{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.git pkgs.python314 ];

  shellHook = ''
    codium --install-extension jnoortheen.nix-ide --force
    codium --install-extension ms-python.python --force
  '';
}
