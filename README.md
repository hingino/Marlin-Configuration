# Marlin-Configuration 2.1.2

A repository to store my various Marlin 2.1.2 configuration files.


## Features

* Uses submodules to build marlin from source
  * Submodules allow you to select specific branch tags at compile time
  * Code is imported direct from source, no need to download and extract every time a new Marlin version comes out
* Easily maintain multiple configuration files
  * Custom config files are int eh `.\Custom` directory
  * Update the `CONFIG-DIR` varible in the root `makefile` to change which configuration is used
  * Update the `PIO-INI` variable for custom `platformio.ini` files
  * Can use custom or example config
* Uses containers to build, no need to install the Platform.io IDE
  * Less time setting up to compile
  * Simplified into make files


## Dependencies

* An OCI container environment
  * `podman` preferred
  * `docker` compatable
* `git`


## Getting Started

1. Clone this repository to the machine you will use to build
2. Update the variables at the top of `makefile` to match your configuration
    * `CE` = Container Environment. Use either `podman` or `docker`
    * `CONFIG-DIR` = Directory containing the configuration files you want to use
    * `PIO-INI` = Location of a complete `platformio.ini` configured for the board you are trying to use
3. Run `make init` to initialize the Marlin submodules
4. Run `make pio-install` to build the platform.io container
5. Finally, run `make firmware-build` to build your firmware