#!/bin/bash

alias python='python3'
stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data workspace -import $1
headless-build.sh -data workspace -build $2