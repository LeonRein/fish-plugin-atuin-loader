# fish-plugin-atuin-loader

Auto-loads [Atuin](https://github.com/atuinsh/atuin) when you start a new Fish shell.

## Installation

```fish
fisher install dudeofawesome/fish-plugin-atuin-loader
```

## Usage

Just start a new shell - Atuin loads automatically.

To pass custom arguments to atuin:

```fish
set -U _atuin_loader_arguments --disable-up-arrow
```

## Development

### Install dependencies

1. `$ fisher install jorgebucaran/fishtape`

### Testing

```sh
$ fishtape test/*.fish
```
