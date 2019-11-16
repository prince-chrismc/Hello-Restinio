#!/bin/sh

pip3 install conan

# Add remote for conan to find RESTinio package.
conan remote add stiffstream https://api.bintray.com/conan/stiffstream/public
# Add remote for conan to find RESTinio's dependencies.
conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan

conan remote enable stiffstream
conan remote enable bincrafters

