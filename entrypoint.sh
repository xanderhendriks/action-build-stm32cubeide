#!/bin/bash

set -euo pipefail

stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -no-indexer -data /tmp/stm-workspace -importAll "$1"
headless-build.sh -no-indexer -data /tmp/stm-workspace -build "$2"
