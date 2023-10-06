{
  self,
  python3Packages,
}:
python3Packages.buildPythonPackage {
  pname = "hello_python";
  version = "0.0.1";
  src = self;
  PIP_DISABLE_PIP_VERSION_CHECK = 1;
  # Add Python modules needed by your package here
  propagatedBuildInputs = with python3Packages; [
    boto3
    requests
  ];
  meta.description = "an example flox package";
}
