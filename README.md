# Build STM32CubeIde project docker action

This action builds a STM32CubeIde project

## Inputs

### `project-path`

**Required** Path to the STM2CubeIde project file.

### `project-target`

**Required** Target in the STM32CubeIde project file to build.

## Example usage

uses: xanderhendriks/action-build-stm32cubeide
with:
  project-path: 'application/targets/STM32'
  project-target: 'hexanode'