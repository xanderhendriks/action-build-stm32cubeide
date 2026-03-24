# Build STM32CubeIde project docker action

This action builds a STM32CubeIde project

## Inputs

### `project-path`

**Required** Path to the STM2CubeIde project file.

### `project-target`

**Required** Target in the STM32CubeIde project file to build. Format: target/[build-configuration]
note: When no build-configuration is given all the projects configuration are build

### `stm32cubeide-version`

Optional tag of the `xanderhendriks/stm32cubeide` image to use. Defaults to `2.1.1`.

## Example usage

Building only the Debug configuration:
```yaml
- uses: xanderhendriks/action-build-stm32cubeide@v10.0
  with:
    project-path: 'applications/sample_application/targets/STM32'
    project-target: 'sample_application/Debug'
```

Building all the configurations (Debug/Release):
```yaml
- uses: xanderhendriks/action-build-stm32cubeide@v10.0
  with:
    project-path: 'applications/sample_application/targets/STM32'
    project-target: 'sample_application'
```

Selecting a specific STM32CubeIDE image tag:
```yaml
- uses: xanderhendriks/action-build-stm32cubeide@v10.0
  with:
    project-path: 'applications/sample_application/targets/STM32'
    project-target: 'sample_application/Debug'
    stm32cubeide-version: '15.0'
```

A working STM32 application example can be found here: [xanderhendriks/stm32-sample-application](https://github.com/xanderhendriks/stm32-sample-application)

### STM32 Cube IDE Versions

The action version and the STM32CubeIDE image version are now independent. By default this action uses tag `2.1.1` of the [xanderhendriks/stm32cubeide](https://hub.docker.com/repository/docker/xanderhendriks/stm32cubeide) image, and you can override that with `stm32cubeide-version`.

This keeps action releases focused on action behavior, while the STM32CubeIDE version is selected explicitly per workflow.

The action mounts its own [entrypoint.sh](entrypoint.sh) into the container and executes it there, so the image stays reusable while the build workflow remains defined in this repository.

The shared command line dependencies used by this action are expected to be baked into the published STM32CubeIDE image.
