{
  "name": "<%= addonName %>",
  "version": "0.1.0",
  "description": "<%= addonName %>: Volto add-on",
  "main": "src/index.js",
  "author": "European Environment Agency: IDM2 A-Team",
  "license": "MIT",
  "homepage": "https://github.com/eea/<%= name %>",
  "keywords": [
    "volto-addon",
    "volto",
    "plone",
    "react"
  ],
  "repository": {
    "type": "git",
    "url": "git@github.com:eea/<%= name %>.git"
  },
  "dependencies": {},
  "devDependencies": {
    "@plone/scripts": "*",
    "jest-css-modules": "^2.1.0",
    "@cypress/code-coverage": "^3.10.0",
    "babel-plugin-transform-class-properties": "^6.24.1",
    "md5": "^2.3.0"
  },
  "scripts": {
    "release": "release-it",
    "release-major-beta": "release-it major --preRelease=beta",
    "release-beta": "release-it --preRelease=beta",
    "bootstrap": "npm install -g ejs; npm link ejs; node bootstrap",
    "test": "make test",
    "test:fix": "make test-update",
    "pre-commit": "yarn stylelint:fix && yarn prettier:fix && yarn lint:fix",
    "stylelint": "make stylelint",
    "stylelint:overrides": "make stylelint-overrides",
    "stylelint:fix": "make stylelint-fix",
    "prettier": "make prettier",
    "prettier:fix": "make prettier-fix",
    "lint": "make lint",
    "lint:fix": "make lint-fix",
    "i18n": "make i18n",
    "cypress:run": "make cypress-run",
    "cypress:open": "make cypress-open"
  }
}
