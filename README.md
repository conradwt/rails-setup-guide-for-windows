# Rails Setup Guide For Windows

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

## Software Requirements

- Windows build 16215 or later

- 16 GB RAM minimum

## Pre-Installation Steps

[Windows Subsystem for Linux Installation Guide for Windows 10](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Note: Install Ubuntu 18.04 from the Windows Store using the link [here](https://www.microsoft.com/en-us/p/ubuntu-1804/9n9tngvndl3q).

## Installation Steps

1.  In Ubuntu, download and install general development tools

    ```bash
    sudo apt-get update -y && sudo apt-get install -qq -y --no-install-recommends \
      autoconf \
      bash \
      bash-completion \
      bison \
      build-essential \
      ctags \
      curl \
      fonts-powerline \
      git-core \
      imagemagick \
      libcurl3-dev \
      libffi-dev \
      libgdbm-dev \
      libgdbm5 \
      libmagick++-6-headers \
      libncurses5-dev \
      libreadline6-dev \
      libssl-dev \
      libyaml-dev \
      locales \
      lsb-release \
      openssh-server \
      powerline \
      software-properties-common \
      sudo \
      tree \
      unzip \
      zlib1g-dev \
      zsh
    ```

2.  In Ubuntu, install Github Hub

    ```bash
    sudo add-apt-repository ppa:cpick/hub
    sudo apt-get update
    sudo apt-get install hub
    ```

3.  In Ubuntu, download and install PostreSQL 11.x

    ```bash
    sudo apt-get update && sudo apt-get install -y gnupg2 wget
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list'
    sudo apt-get update -y -qq && sudo apt-get upgrade -y -qq
    sudo apt-get install -y -qq \
      libpq-dev \
      postgresql-11 \
      postgresql-client-11 \
      postgresql-server-dev-11
    sudo sed -i 's/#fsync = on/fsync = off/' /etc/postgresql/11/main/postgresql.conf
    ```

4.  In Ubuntu, start the PostgreSQL 11.x

    ```bash
    sudo service postgresql start
    ```

    Note: You’ll need perform this step everytime you boot or reboot your machine.

5.  In Ubuntu, download and install Node and Yarn

    ```bash
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get update -y && sudo apt-get install -y nodejs
    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update && sudo apt-get install -y yarn
    ```

6.  In Windows, install Visual Studio Code Insiders

    [Download VS Code Insiders](https://code.visualstudio.com/docs/?dv=win64&build=insiders)

7.  In Ubuntu, create an alias for Visual Studio Code - Insiders

    ```bash
    echo 'alias c="'/mnt/c/Program\ Files/Microsoft\ VS\ Code\ Insiders/bin/code-insiders'"' >> ~/.bashrc
    ```

8.  In Ubuntu, clone this repository

    ```bash
    cd $HOME
    git clone https://github.com/conradwt/rails-setup-guide-for-windows
    ```

9.  In Ubuntu, change directory to the cloned repository

    ```bash
    cd rails-setup-guide-for-windows
    ```

10. In Ubuntu, install and configure RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    sudo chmod go-w $HOME/.rbenv
    cd ~/.rbenv && src/configure && make -C src
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    source $HOME/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    source $HOME/.bashrc
    ```

11. In Ubuntu, install all of the approved plugins RBenv plugins

    ```bash
    cd $HOME/rails-setup-guide-for-windows
    chmod +x install-rbenv-plugins.bash
    ./install-rbenv-plugins.bash
    ```

12. In Ubuntu, install Ruby

    ```bash
    rbenv install 2.6.3
    rbenv global 2.6.3
    ```

13. In Ubuntu, install Bundler and Rails

    ```bash
    gem install bundler -v=1.17.3
    gem install rails
    gem install rubocop
    rbenv rehash
    ```

14. In Ubuntu, install Heroku Toolbelt

    ```bash
    curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
    ```

15. In Ubuntu, create a Github.com account

    ```
    Note:  Skip this step if you already have an account.
    ```

16. In Ubuntu, create Git configuration and global files

    ```
    cp $HOME/rails-setup-guide-for-windows/sample.gitconfig ~/.gitconfig
    cp $HOME/rails-setup-guide-for-windows/sample.gitignore_global ~/.gitignore_global
    ```

17. In Ubuntu, edit .gitconfig file

    - change `excludesfile` setting:

      ```bash
      git config --global core.excludesfile ~/.gitignore_global
      ```

    - change `name` and `email` for Github account

      e.g.

      ```bash
      git config --global user.name "John Doe"
      git config --global user.email johndoe@example.com
      ```

    - use Unix-style line endings (LF) for uploads

      ```bash
      git config --global core.autocrlf input
      ```

18. create and/or setup SSH keys

    - if you have SSH keys

      - create SSH folder in home directory

        ```bash
         mkdir -p $HOME/.ssh
        ```

      - copy your SSH keys to the above folder

      - set permissions

        ```bash
        chmod 700 $HOME/.ssh
        chmod 600 $HOME/.ssh/id_rsa
        chmod 644 $HOME/.ssh/id_rsa.pub
        ```

    - if you don't have SSH keys

      - [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

        Note: Please select Link link at the top of the page. On step 4, type `enter or return` key.

19. Add SSH public key to Github

    [Adding a new SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

20. In Ubuntu, testing your SSH connection

    [Testing your SSH connection](https://help.github.com/en/articles/testing-your-ssh-connection)

21. In Ubuntu, install Oh My ZSH and associated Spaceship theme

    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo npm install -g spaceship-prompt
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    mkdir -p $HOME/.zsh/completions
    cd $HOME/.zsh/completions
    cp $HOME/rails-setup-guide-for-windows/sample._hub $HOME/.zsh/completions/_hub
    cp $HOME/rails-setup-guide-for-windows/sample.zshrc ~/.zshrc
    ```

22. Sign up for Windows Insiders Program. (Optional)

    [Windows Insiders Program](https://insider.windows.com)

    Note: This step is for the adventurous but you'll get to experiment and play with pre-releases of Windows.

## Support

Bug reports and feature requests can be filed here:

- [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-windows/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2018 - 2019 Conrad Taylor. All Rights Reserved.
