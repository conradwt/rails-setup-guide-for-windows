# VSCode Setup

## Software Requirement

VSCode - Insiders

## Steps

1.  Exit VS Code - Insiders

2.  In Powershell, install VS Code Extensions

    ```text
    code-insiders --install-extension angryobject.react-pure-to-class-vscode
    code-insiders --install-extension apollographql.vscode-apollo
    code-insiders --install-extension be5invis.vscode-custom-css
    code-insiders --install-extension benvp.vscode-hex-pm-intellisense
    code-insiders --install-extension bungcip.better-toml
    code-insiders --install-extension burkeholland.react-food-truck
    code-insiders --install-extension burkeholland.simple-react-snippets
    code-insiders --install-extension capaj.vscode-exports-autocomplete
    code-insiders --install-extension castwide.solargraph
    code-insiders --install-extension christian-kohler.npm-intellisense
    code-insiders --install-extension DavidAnson.vscode-markdownlint
    code-insiders --install-extension dbaeumer.vscode-eslint
    code-insiders --install-extension docsmsft.docs-markdown
    code-insiders --install-extension eamodio.gitlens
    code-insiders --install-extension eg2.vscode-npm-script
    code-insiders --install-extension Equinusocio.vsc-material-theme
    code-insiders --install-extension esbenp.prettier-vscode
    code-insiders --install-extension GitHub.vscode-pull-request-github
    code-insiders --install-extension gottfired.css2react
    code-insiders --install-extension humao.rest-client
    code-insiders --install-extension kumar-harsh.graphql-for-vscode
    code-insiders --install-extension mikestead.dotenv
    code-insiders --install-extension misogi.ruby-rubocop
    code-insiders --install-extension ms-vscode-remote.remote-containers
    code-insiders --install-extension ms-vscode-remote.remote-ssh
    code-insiders --install-extension ms-vscode-remote.remote-ssh-edit
    code-insiders --install-extension ms-vscode-remote.remote-ssh-explorer
    code-insiders --install-extension ms-vscode-remote.remote-wsl
    code-insiders --install-extension ms-vscode-remote.vscode-remote-extensionpack
    code-insiders --install-extension ms-vsliveshare.vsliveshare
    code-insiders --install-extension msjsdiag.debugger-for-chrome
    code-insiders --install-extension noku.rails-run-spec-vscode
    code-insiders --install-extension Orta.vscode-jest
    code-insiders --install-extension pflannery.vscode-versionlens
    code-insiders --install-extension PKief.material-icon-theme
    code-insiders --install-extension Prisma.vscode-graphql
    code-insiders --install-extension rebornix.ruby
    code-insiders --install-extension redhat.vscode-yaml
    code-insiders --install-extension robinbentley.sass-indented
    code-insiders --install-extension sdras.night-owl
    code-insiders --install-extension Shan.code-settings-sync
    code-insiders --install-extension sidthesloth.html5-boilerplate
    code-insiders --install-extension streetsidesoftware.code-spell-checker
    code-insiders --install-extension VisualStudioExptTeam.vscodeintellicode
    code-insiders --install-extension vscode-icons-team.vscode-icons
    code-insiders --install-extension wesbos.theme-cobalt2
    code-insiders --install-extension wix.vscode-import-cost
    code-insiders --install-extension xabikos.JavaScriptSnippets
    code-insiders --install-extension xabikos.ReactSnippets

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
