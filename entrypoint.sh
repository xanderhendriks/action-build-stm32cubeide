#!/bin/bash

stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data /tmp/stm-workspace -importAll "$1"
headless-build.sh -data /tmp/stm-workspace -build "$2"
