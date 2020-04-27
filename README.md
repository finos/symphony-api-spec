# symphony-api-spec

This repository will contain the Swagger API definition files for the Symphony REST API. These files were previously available from Symphony LLC at https://rest-api.symphony.com/docs/rest-api-specification.  Versions of these files prior to release 1.46 can still be found there.

Branching and versioning of this repository will match those of the Symphony platform:
* Branches: rc-current-r46, rc-current-r47, etc.
* Versions: 1.46.0, 1.46.1, 1.47.0, etc.

There are three sets of definition files (authenticator, agent and pod) and each set has two files: a "-public" file which contains all the current endpoint definitions and a "-public-deprecated" file which contains all the current and the all the deprecated endpoint definitions.

You can paste the contents of these files into [Swagger Editor](http://editor.swagger.io/), from which you can generate client code.

## Contributing

1. Fork it (<https://github.com/symphonyoss/symphony-api-spec/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Read our [contribution guidelines](.github/CONTRIBUTING.md) and [Community Code of Conduct](https://www.finos.org/code-of-conduct)
4. Commit your changes (`git commit -am 'Add some fooBar'`)
5. Push to the branch (`git push origin feature/fooBar`)
6. Create a new Pull Request

### Validating your changes (requires Maven)

You can verify that your contribution is valid by simply running : 
```shell script
mvn clean package
```
This will execute the [`openapi-generator-maven-plugin`](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator-maven-plugin) 
in order to generate a Java client from the API specifications. If `BUILD SUCCESS`, it means that your additions are valid !
If `BUILD FAILURE`, check the command output where the validation error has been described.

## License

The code in this repository is distributed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

Copyright (c) 2020 Symphony LLC