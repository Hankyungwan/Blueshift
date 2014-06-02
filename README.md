Blueshift
=========

Blueshift begun as a collaboration between @heavyk and @duralog to take us to the future. a Blueshift means that a planetary body is moving toward you and so its emitted light appears more "blue". I don't really understand how the frequency of a light wave can be modified by its emitter's velocity.


[1] actually, I might have figured some of it out already - however quite a few details still aren't clear at all. understanding this is irrelevant to me still. low priority. however, I can't wait to learn more about it. enlighten us on the [wiki](What\ is\ a\ blueshift?)

you will need `repo` installed. on osx, `brew install repo` ... for windows, we will eventually run the whole system inside of a virtual machine. I know it's slower, but POSIX is necessary. (sunos and freebsd coming soon, or could actually already be working -)

# Getting Started

## 1. Install `repo`
`repo` is a tool developed by [Google](https://chromium.googlesource.com/external/repo) to make development on multiple repositories much easier. duralog will eventually integerate this with heavyk's work on Laboratory.

1. OSX: `brew install repo` (if you don't have brew installed [find out how to do it here](http://brew.sh))
2. Linux: [Get depot_tools](http://www.chromium.org/developers/how-tos/install-depot-tools).
3. Windows currently not supported (coming soon)

## 2. Download Release Version (insecure)

```
mkdir Blueshift
cd Blueshift
repo init -u https://github.com/duralog/Blueshift.git -m release \
  --repo-url https://github.com/duralog/repo.git \
  --no-repo-verify --depth=1
repo sync
npm install
```

the last option, `--depth=1` is optional, but it'll save you a lot of time. I highly recommend you continue reading while it's downloaded

## 3. Upgrade to the the development version and begin contributing (secure)

### Convert to deep commit history

`git` stores a complete history of every single commit in its repository. this is the commit history. this allows for `git` to be capable of verifying that there has been no corruption in the commit history (learn about how linux was almost compromised with a malicious function inserted into the kernel commit history (TODO:link)). since the SHA1 of every is calculated , every commit is calculated beginning with the previous commit (to learn more, (TODO:add_article_about_how_git_calculates_the_sha1)). and so, previously, you had checked out the source with a `--depth=1` option. this saves a lot of time and bandwidth because it is the minimum amount of history necessary to construct the  .but could potentially be inscure, and your computer could be compromised with a MITM attack (TODO:add_article_about_git_and_security)) and so, because far fewer commits are needed to construct the working directory's HEAD (latest revision),  in it's history. actually, you will only be able to see the latest commit because you only have the bare essentials in the commit history


first, you will need to unshallow all checked out `git` repos before you can contribute your changes. like so.

this could take a while, so while you wait, we think you might enjoy reading about [what's happening under the hood](git/unshallow)
```
repo forall -c git fetch --unshallow
repo sync
```


# Contribute
in order to be able to contribute, you will need to upgrade to the development version (see above).


(TODO: add more directions here, expand on Laboratory and repo usage)




## Things which need to be done
 - [ ] make the install process as easy as typing `npm install -g blueshift`
  - [ ] make some sort of binary `blueshift install sencillo` & `sencillo start/stop` (or something like that)
 - [ ] get arango db installed and all the proxy components working.
 - [ ]

## Things which I think would be kinda fun to have
 - [ ] when the installation has finished, notify the user.
  - [ ] if `growlnotify` is installed, do a growl notification
  - [ ] potentially, we could automate a growl installation.
   - [ ] just download and install it from the source
   - [ ] maybe just say fuck it, and download a compiled package from torrent
   - [ ] potentially, if we can get chromium notifications in node-webkit, we could use that.
   - [ ] another option is to make a chrome extension for interaction purposes (and just use the extension to give chrome notifications)

## TODO

4. (once it's more or less working), trim this repo down a whole lot, and remove all the unnecessary cruft
