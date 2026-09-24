# Archive

Provides functions to create, list, and extract archives.

This module must be loaded _before_ the [_`completion`_][1] module so that the
provided completion definitions are loaded automatically by _`completion`_
module.

## Functions

- `archive` creates an archive based on the provided archive name.
- `lsarchive` lists the contents of one or more archives.
- `unarchive` extracts the contents of one or more archives.

## Supported Formats

The following archive formats are supported when the required utilities are
installed:

- _.tar.gz_, _.tgz_ require `tar` (optionally `pigz`).
- _.tar.bz2_, _.tbz_ require `tar` (optionally `pbzip2`).
- _.tar.xz_, _.txz_ require `tar` with _xz_ support.
- _.tar.zma_, _.tlz_ require `tar` with _lzma_ support.
- _.tar_ requires `tar`.
- _.gz_ requires `gunzip`.
- _.bz2_ requires `bunzip2`.
- _.xz_ requires `unxz`.
- _.lzma_ requires `unlzma`.
- _.Z_ requires `uncompress`.
- _.zip_, _.jar_ requires `unzip`.
- _.rar_ requires `rar` (needed for `archive` support), `unrar` or `lsar` and `unar`.
- _.7z_ requires `7za`.
- _.deb_ requires `ar`, `tar`.
- _.age_ requires [`age`][4], and is a layer over the tar formats rather than
  one of them: _.tar.age_, _.tar.gz.age_, _.tar.bz2.age_ and _.tar.xz.age_.

Additionally, if `pigz` and/or `pbzip2` are installed, `archive` will use them
over their traditional counterparts, `gzip` and `bzip2` respectively, to take
full advantage of all available CPU cores for compression.

## Encrypted Archives

```sh
archive keys.tar.gz.age ~/.ssh ~/.gnupg   # prompts for a passphrase
lsarchive keys.tar.gz.age
unarchive keys.tar.gz.age
```

`archive` pipes tar straight into `age`, so the contents are never written to
disk unencrypted, and `unarchive` extracts with the stored permissions — an
encrypted archive usually holds private keys, which `ssh` refuses to use if the
umask has widened them.

`.zip.age`, `.rar.age` and `.7z.age` are rejected: those tools only write to a
file they name themselves, which would mean staging the contents in plaintext
first. `.tar.zst.age` is rejected because libarchive cannot read a zstd stream
back off a pipe, so the result would not be extractable.

Sockets found under the paths being archived are skipped rather than aborting
the run — `tar` cannot store one, and `~/.ssh` and `~/.gnupg` normally hold
live `ControlMaster` and `gpg-agent` sockets, which are recreated on demand.

## Alternatives

Specifically on macOS, [The Unarchiver][2] provides a similar command line tool
which doesn't depend on a number of other programs being installed.

## Authors

_The authors of this module should be contacted via the [issue tracker][3]._

- [Sorin Ionescu](https://github.com/sorin-ionescu)
- [Matt Hamilton](https://github.com/Eriner)

[1]: ../completion#readme
[2]: https://theunarchiver.com/command-line
[3]: https://github.com/sorin-ionescu/prezto/issues
[4]: https://age-encryption.org
