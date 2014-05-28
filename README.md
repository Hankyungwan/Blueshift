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

TODO: make the install process as easy as typing `npm install -g blueshift`
