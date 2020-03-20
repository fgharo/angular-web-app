# AngularWebApp

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 8.3.19.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).


# Podman/Docker cli
## Compiling/Building
Use the Dockerfile, .dockerignore along with podman to build an image. 
`sudo podman build -t text-utils-container-image-name:0.0.0 .`

Make sure the image has been stored in the local docker/podman registry repository. 
`sudo podman images`

## Running in local Container
Run the image in a container in a background process. Forward requests on localhost:8080 to the nginx server listening on port 80. 
`sudo podman run -t text-utils-container-name -d -p 8080:80 localhost/text-utils-container-image-name:0.0.0`

Make sure the container has been build and cached locally. 
`sudo podman container list`

See that your isolated contained process/container is running. 
`sudo podman ps`
