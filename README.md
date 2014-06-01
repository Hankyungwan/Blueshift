Blueshift
=========

you will need `repo` installed. on osx, `brew install repo` ... for windows, I'm not sure but re

## Install repo

1. OSX: `brew install repo`
2. Windows & Linux: [Get depot_tools](http://www.chromium.org/developers/how-tos/install-depot-tools).

## First time

```
mkdir Blueshift
cd Blueshift
repo init -u https://github.com/duralog/Blueshift.git --repo-url https://github.com/duralog/repo.git --no-repo-verify
repo sync
npm install
```

## TODO

1. make the install process as easy as typing `npm install -g blueshift`
2. make some sort of binary `blueshift install sencillo` & `sencillo start/stop` (or something like that)
3. get the arango db installed and the proxy all working (WIP)
4. (once it's more or less working), trim this repo down a whole lot, and remove all the unnecessary cruft
