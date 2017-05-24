# symphony-api-spec

This repository will contain the Swagger API definition files for the Symphony REST API. These files were previously available from Symphony LLC at https://rest-api.symphony.com/docs/rest-api-specification.  Versions of these files prior to release 1.46 can still be found there.

Branching and versioning of this repository will match those of the Symphony platform:
* Branches: rc-current-r46, rc-current-r47, etc.
* Versions: 1.46.0, 1.46.1, 1.47.0, etc.

There are three sets of definition files (authenticator, agent and pod) and each set has two files: a "-public" file which contains all the current endpoint definitions and a "-public-deprecated" file which contains all the current and the all the deprecated endpoint definitions.

You can paste the contents of these files into [Swagger Editor](http://editor.swagger.io/), from which you can generate client code.
