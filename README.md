## qtdesignstudio.nix

An attempt to run Qt Design Studio 2.3.1 on NixOS with Flakes.

**NOTE:** Before building it you need to have Qt Design Studio extracted and zipped. 

You can ether extract it on your own from
[qt-designstudio-linux-x86_64-2.3.1-community.run](https://download.qt.io/official_releases/qtdesignstudio/2.3.1/qt-designstudio-linux-x86_64-2.3.1-community.run) (by using e.g. `steam-run`)
and then zip it,

or:

Download zipped file from [Release page](https://github.com/satk0/qtdesignstudio.nix/releases/tag/0.0.1). 

#### Building:

1. Add zip file to git:

`git add  qtdesignstudio-2.3.1.zip`

2. Then, build it with:

`nix build`

**NOTE:** As for now, it is not working, so don't try it unless you want to help :)
