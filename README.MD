# iOS Environment Project

This project contains a set of variables and configurations to help you manage your environments with ease.

## Simplest configuration way
### User Defined settings
There's a single target called "_base_", if select it and go to "_Build Settings_" and scroll down all the way to the bottom, you'll see a set of **user-defined** properties.

I'll explain each one of them but you can search for them by name to see where they are being used.

- Bundle Environment (BUNDLE_ENVIRONMENT)

    This variable is being used as a helper to the two variables and will pretty much serve as a reference to check if we're on a production environment or not;

    We're also chaining it with the `Assets Catalog App Icon Set Name` variable to produce different icons for each environment scheme we build.

- Suffix (BUNDLE_SUFFIX)

    By using this variable we're changing our bundle_identifier by chaining it with the default id, making each scheme to produce a different identifier

    e.g.: `com.environment.$(BUNDLE_SUFFIX)`

    Development scheme would make _**com.environment.base-dev**_

    Homologation would produce _**com.environment.base-hml**_

    Production output for this one is the default id _**com.environment.base**_


- Endpoint (SERVER_ENDPOINT) **optional**

    This one will output different endpoint URL's for each environment with the help of our BUNDLE_ENVIRONMENT variable

## A way a bit more complicated than the previous method
### Configuration files

Instead of defining all of your variables on your build settings you can create a different set of plists and xcconfig files and use them as configuration base for your application environment management.

W.I.P.


LICENSE
--
MIT License

Copyright (c) 2018 Guilherme Ramos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
