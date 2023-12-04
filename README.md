# LinuxAndNixosScript
POC how to build Ubuntu and Nixos python script (with needed libraries) swithout using shebang in Nixos to download needed Python libraries

1) Using example script as: Ghaf Github Pull Request Hydra Builder
from https://github.com/tiiuae/ci-public/tree/main/pullrequests

2) Smallest test script: tester.py
<br>
<br>


Ubuntu(Mint) script "building":
<br>
-- install all libraries globally to machine
<br>
-- if script level installation needed, check *virtual env* approach ( https://docs.python.org/3/library/venv.html )

1) Add needed Python libraries to *requirements.txt* file 
2) Install pip (if needed): *sudo apt install python3-pip*
3) Install needed libraries *pip3 install -r requirements.txt*
<br>
<br>
<br>

Nixos , using nix-shell approach

1) Create shell.nix file:

```
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python10
    pkgs.python10Packages.virtualenv
  ];

  shellHook = ''
    python -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
  '';
}
```
2) Add needed Python libraries to *requirements.txt* file  

3) Start (in current shell) new shell: *nix-shell*

