# VSCode Setup

## Software Requirement

VSCode - Insiders

## Steps

1.  Exit VS Code - Insiders

2.  In Ubuntu, install VS Code Extensions

    ```zsh
    cd rails-setup-guide-for-windows
    git pull
    cd vscode
    chmod +x vscode-extensions.zsh
    ./vscode-extensions.zsh
    ```

3.  In Ubuntu, setup Settings

    ```zsh
    cp settings.json %APPDATA%\Code\User\settings.json ??
    ```

    ```text
    Note: Depending on your platform, the user settings file is located here:

    Windows %APPDATA%\Code\User\settings.json
    macOS $HOME/Library/Application Support/Code/User/settings.json
    Linux $HOME/.config/Code/User/settings.json
    ```

4.  Configure `Settings Sync`

    https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync

5.  Add editor styles

    ```zsh
    cp $HOME/rails-setup-guide-for-windows/vscode/sample.vscodestyles.css ????
    ```
