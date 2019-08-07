# Rubocop Temporary Workaround

## Visual Studio Code Remote - WSL extension

https://code.visualstudio.com/docs/remote/wsl

## Add bin directory

In Ubuntu terminal, type the following:

```zsh
mkdir -p /mnt/c/bin
```

## Add rubocop.bat to bin directory

In Ubuntu terminal, type the following:

```zsh
cp $HOME/rails-setup-guide-for-windows/sample.rubocop.bat /mnt/c/bin/rubocop.bat
```

## Rubocop VSCode configuration

In VSCode Insiders, change the `ruby.rubocop.executePath` value to the following:

```text
"ruby.rubocop.executePath": "C:/bin/"
```
