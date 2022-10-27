#!/bin/bash

stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data /tmp/stm-workspace -import $1
headless-build.sh -data /tmp/stm-workspace -build $2
