# Replace "stdenv" with the namespace or name of your language's builder
{
  self,
  stdenv,
  lib,
}:
# Replace "stdenv.mkDerivation" with your language's builder
stdenv.mkDerivation {
  pname = "flox-simple-lib";
  version = "0.0.4-${lib.flox-floxpkgs.getRev self}";
  src = self; # + "/src";

  # Add runtime dependencies to buildInputs.
  buildInputs = [];

  # Add runtime dependencies required by packages that
  # depend on this package to propagatedBuildInputs.
  propagatedBuildInputs = [];

  installPhase = ''
    mkdir -p $out
    cp -r lib $out
  '';

  # Add buildtime dependencies (not required at runtime)
  # to nativeBuildInputs.
  nativeBuildInputs = [];
  meta.description = "an example flox package";
}
