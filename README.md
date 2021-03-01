Carbs Linux Repository
======================

Official Git Repositories for Carbs Linux, these can be obtained from the rsync
server as well. See the [Installation Manual] to learn more about setting up
the repositories.


* [Carbs Linux Homepage](https://carbslinux.org)
* [User Manual](https://carbslinux.org/docs.html)
* [Package Manager](https://git.sr.ht/~carbslinux/cpt)
* [Repology Packaging Status](https://repology.org/repository/carbs)


[Installation Manual]: https://carbslinux.org/install.html

Information on the repository
-----------------------------

This repository assumes that the packages in the [cpt-base] file will be
available at all times. You might go ahead and change it, but don't post any
issues when a package fails to build because you removed a package that was
previously in the base.

[cpt-base]: (./core/cpt/files/cpt-base)

All the package repositories have their own purpose:

- `core`:
  packages that provide "core" functionality.
- `extra`:
  stable packages that are not necessary, but considered part of the base
  distribution.
- `community`:
  package repository open for all PRs/patches.
- `testing`:
  unstable packages
- `xorg`:
  packages for building the X11 display server and friends.
- `wayland`:
  packages for building wayland. (not yet stable)
- `dbus`:
  IRC conversation starter / dbus and packages with hard dependencies.


Enabling repository signing
---------------------------

All the commits on this repository are signed by using my key ([cem@ckyln.com]). You can install
`gnupg2` in order to enable signature verification.

    cpt-build gnupg2 && cpt-install gnupg2
    
My GnuPG key can be found at the end of this file.

[cem@ckyln.com]: (mailto:cem@ckyln.com)


Reporting Issues
----------------

Issues should be reported to
[~carbslinux/devel@lists.sr.ht](mailto:~carbslinux/devel@lists.sr.ht)
or by submitting a ticket on <https://todo.sr.ht/~carbslinux/carbslinux>.

GnuPG public key
----------------

```
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=sXoi
-----END PGP PUBLIC KEY BLOCK-----
```

