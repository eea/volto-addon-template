# <%= name %>

[![Releases](https://img.shields.io/github/v/release/eea/<%= name %>)](https://github.com/eea/<%= name %>/releases)

[![Pipeline](https://ci.eionet.europa.eu/buildStatus/icon?job=volto-addons%2F<%= name %>%2Fmaster&subject=master)](https://ci.eionet.europa.eu/view/Github/job/volto-addons/job/<%= name %>/job/master/display/redirect)
[![Lines of Code](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&metric=ncloc)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>)
[![Coverage](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&metric=coverage)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>)
[![Bugs](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&metric=bugs)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>)
[![Duplicated Lines (%)](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&metric=duplicated_lines_density)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>)

[![Pipeline](https://ci.eionet.europa.eu/buildStatus/icon?job=volto-addons%2F<%= name %>%2Fdevelop&subject=develop)](https://ci.eionet.europa.eu/view/Github/job/volto-addons/job/<%= name %>/job/develop/display/redirect)
[![Lines of Code](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&branch=develop&metric=ncloc)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>&branch=develop)
[![Coverage](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&branch=develop&metric=coverage)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>&branch=develop)
[![Bugs](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&branch=develop&metric=bugs)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>&branch=develop)
[![Duplicated Lines (%)](https://sonarqube.eea.europa.eu/api/project_badges/measure?project=<%= name %>&branch=develop&metric=duplicated_lines_density)](https://sonarqube.eea.europa.eu/dashboard?id=<%= name %>&branch=develop)


[Volto](https://github.com/plone/volto) add-on

## Features

Demo GIF

## Getting started

### Try <%= name %> with Docker

      git clone https://github.com/eea/<%= name %>.git
      cd <%= name %>
      make
      make start

Go to http://localhost:3000

### Add <%= name %> to your Volto project

1. Make sure you have a [Plone backend](https://plone.org/download) up-and-running at http://localhost:8080/Plone

   ```Bash
   docker compose up backend
   ```

1. Start Volto frontend

* If you already have a volto project, just update `package.json`:

   ```JSON
   "addons": [
       "<%= addonName %>"
   ],

   "dependencies": {
       "<%= addonName %>": "*"
   }
   ```

* If not, create one:

   ```
   npm install -g yo @plone/generator-volto
   yo @plone/volto my-volto-project --canary --addon <%= addonName %>
   cd my-volto-project
   ```

1. Install new add-ons and restart Volto:

   ```
   yarn
   yarn start
   ```

1. Go to http://localhost:3000

1. Happy editing!

## Release

See [RELEASE.md](https://github.com/eea/<%= name %>/blob/master/RELEASE.md).

## How to contribute

See [DEVELOP.md](https://github.com/eea/<%= name %>/blob/master/DEVELOP.md).

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

See [LICENSE.md](https://github.com/eea/<%= name %>/blob/master/LICENSE.md) for details.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
