[![FINOS - Active](https://cdn.jsdelivr.net/gh/finos/contrib-toolbox@master/images/badge-active.svg)](https://finosfoundation.atlassian.net/wiki/display/FINOS/Active)
[![OpenSSF Best Practices](https://bestpractices.coreinfrastructure.org/projects/6747/badge)]
(https://bestpractices.coreinfrastructure.org/projects/6747)

# symphony-api-spec

This repository contains the OpenAPI/Swagger API definition files for the Symphony REST API. The full
documentation of the API is available on
the [developer's website](https://developers.symphony.com/restapi/reference).

The master branch of the repository can be used. Endpoints or attributes added in recent versions
will be documented accordingly.

The main documented endpoints are:

- [Pod APIs](./pod)
- [Agent APIs](./agent)
- [RSA login APIs](./login)
- [Certificate login APIs](./authenticator)
- [Profile Manager APIs](./profile-manager) _(using OpenAPI 3.0)_
- [Community Connect APIs](./community-connect) _(using OpenAPI 3.0.1)_

Specifications can be split in 2 different files to separate current endpoints and deprecated ones.

A [Postman collection](./postman) is provided to help you test the API. You can paste the definition
files into [Swagger Editor](http://editor.swagger.io/), from which you can generate client code.

## Contributing

_The definition files are automatically updated after each Symphony release so we don't usually
expect those to be manually edited. However, it can be useful to open a PR to suggest documentation
changes._

1. Fork it (<https://github.com/finos/symphony-api-spec/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Read our [contribution guidelines](.github/CONTRIBUTING.md) and [Community Code of Conduct](https://www.finos.org/code-of-conduct)
4. Commit your changes (`git commit -am 'Add some fooBar'`)
5. Push to the branch (`git push origin feature/fooBar`)
6. Create a new Pull Request

_NOTE:_ Commits and pull requests to FINOS repositories will only be accepted from those contributors with an active, executed Individual Contributor License Agreement (ICLA) with FINOS OR who are covered under an existing and active Corporate Contribution License Agreement (CCLA) executed with FINOS. Commits from individuals not covered under an ICLA or CCLA will be flagged and blocked by the FINOS Clabot tool. Please note that some CCLAs require individuals/employees to be explicitly named on the CCLA.

*Need an ICLA? Unsure if you are covered under an existing CCLA? Email [help@finos.org](mailto:help@finos.org)*

### Validating your changes (requires Maven)

You can verify that your contribution is valid by simply running :

```shell script
mvn clean package
```

This will execute
the [`openapi-generator-maven-plugin`](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator-maven-plugin)
in order to generate a Java client from the API specifications. If `BUILD SUCCESS`, it means that
your additions are valid !
If `BUILD FAILURE`, check the command output where the validation error has been described.

## License

Copyright 2022 Symphony LLC

Distributed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

SPDX-License-Identifier: [Apache-2.0](https://spdx.org/licenses/Apache-2.0)

