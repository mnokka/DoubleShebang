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
