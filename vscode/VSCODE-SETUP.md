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

    if the above doesn't work for you, one can manually install the extensions via VS Code - Insiders:

    ```text
    angryobject.react-pure-to-class-vscode
    apollographql.vscode-apollo
    be5invis.vscode-custom-css
    benvp.vscode-hex-pm-intellisense
    bungcip.better-toml
    burkeholland.react-food-truck
    burkeholland.simple-react-snippets
    capaj.vscode-exports-autocomplete
    castwide.solargraph
    christian-kohler.npm-intellisense
    DavidAnson.vscode-markdownlint
    dbaeumer.vscode-eslint
    docsmsft.docs-markdown
    eamodio.gitlens
    eg2.vscode-npm-script
    Equinusocio.vsc-material-theme
    esbenp.prettier-vscode
    GitHub.vscode-pull-request-github
    gottfired.css2react
    hiro-sun.vscode-emacs
    humao.rest-client
    kumar-harsh.graphql-for-vscode
    mikestead.dotenv
    misogi.ruby-rubocop
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode-remote.remote-ssh-explorer
    ms-vscode-remote.remote-wsl
    ms-vscode-remote.vscode-remote-extensionpack
    ms-vsliveshare.vsliveshare
    msjsdiag.debugger-for-chrome
    noku.rails-run-spec-vscode
    Orta.vscode-jest
    pflannery.vscode-versionlens
    PKief.material-icon-theme
    Prisma.vscode-graphql
    rebornix.ruby
    redhat.vscode-yaml
    robinbentley.sass-indented
    sdras.night-owl
    Shan.code-settings-sync
    sidthesloth.html5-boilerplate
    streetsidesoftware.code-spell-checker
    VisualStudioExptTeam.vscodeintellicode
    vscode-icons-team.vscode-icons
    wesbos.theme-cobalt2
    wix.vscode-import-cost
    xabikos.JavaScriptSnippets
    xabikos.ReactSnippets

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
