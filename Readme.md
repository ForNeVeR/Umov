Umov [![Build status][appveyor-status-badge]][appveyor-status] [![Status Zero][status-zero]][andivionian-status-classifier] [![Nuget Package][nuget-badge]][nuget-umov]
=====

Umov is a [FDTD][fdtd] modelling library for electromagnetic field.

Currently it is not in compilable state, it will be completely rewritten.

Build
-----

This project uses [Paket][paket] dependency manager. Before opening the solution
or building the project, you should install Paket (or Paket bootstrapper) into
`.paket` directory and download the dependencies using the following commands:

    $ ./.paket/paket.bootstrapper.exe
    $ ./.paket/paket.exe restore

For convenience, there is a script `Scripts/Install.ps1` that will download
Paket bootstrapper and call these commands automatically.

Consult the script documentation to discover its parameters.

Packaging
---------

To build [Nuget][nuget] package for Umov, use the script `Scripts/Package.ps1`.
If you want to push this package to the Nuget feed, use
`Scripts/Push-Package.ps1`.

Consult the scripts documentation to get the information about their parameters.

[andivionian-status-classifier]: https://github.com/ForNeVeR/andivionian-status-classifier
[appveyor-status]: https://ci.appveyor.com/project/ForNeVeR/umov/branch/develop
[fdtd]: http://fdtd.kintechlab.com/en/fdtd
[nuget]: https://www.nuget.org/
[nuget-umov]: https://www.nuget.org/packages/Umov/
[paket]: https://fsprojects.github.io/Paket/
[wtfpl]: http://www.wtfpl.net/

[appveyor-status-badge]: https://ci.appveyor.com/api/projects/status/figmr06ix4cn2u9n/branch/develop?svg=true
[nuget-badge]: https://img.shields.io/nuget/vpre/Umov.svg
[status-zero]: https://img.shields.io/badge/status-zero-lightgrey.svg
[wtfpl-badge]: http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-2.png
