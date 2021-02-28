{
  pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs-channels/archive/b58ada326aa612ea1e2fb9a53d550999e94f1985.tar.gz") {}
}:
 pkgs.mkShell{
     buildInputs =[
         pkgs.terraform
         pkgs.curl
     ];
     shellHook = ''
    echo hello Mor
    echo you are using terraform version $(terraform version)
  '';
 }