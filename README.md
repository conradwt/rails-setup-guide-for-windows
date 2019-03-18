# Rails Setup Guide For Ubuntu

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

## Pre-Installation Steps (Window 10 Users Only)

https://www.hanselman.com/blog/TheYearOfLinuxOnTheWindowsDesktopWSLTipsAndTricks.aspx

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
      nodejs \
      software-properties-common \
      sudo \
      unzip \
      yarn \
      zlib1g-dev
    ```

2.  In Ubuntu, download and install PostreSQL 11.x

    ```bash
    sudo apt-get update && sudo apt-get install -y gnupg2 wget
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt-get update -y -qq && sudo apt-get upgrade -y -qq
    sudo apt-get install -y -qq \
      libpq-dev \
      postgresql-11 \
      postgresql-client-11 \
      postgresql-server-dev-11
    ```

3.  In Ubuntu, start the PostgreSQL 11.x

    ```bash
    sudo service postgresql start
    ```

4.  In Ubuntu, set the default PostgreSQL password

    - login into the `postgres` account

      ```bash
      sudo su - postgres
      ```

    - start the `psql` client application

      ```bash
      psql
      ```

      If everything went successful, one should see something similar to the following:

      ```text
      postgres@e343a9c5cf2e:~$ psql
      psql (11.2 (Ubuntu 11.2-1.pgdg18.04+1))
      Type "help" for help.

      postgres=#
      ```

    - change the PostgreSQL password by typing the following into the prompt and hitting the enter key:

      ```text
      \password
      ```

    - enter `password` for `Enter new password:` prompt.

    - enter `password` for `Enter it again:` prompt.

    - exit `psql` prompt by typing the following into the prompt and hitting the
      enter key:

      ```text
      \q
      ```

    - exit `postgres` account by typing the following:

      ```bash
      exit
      ```

    Note: The password that you'll be using within your `database.yml` file
    will be `password`.

5.  In Ubuntu, download and install Node 11.x

    ```bash
    curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
    sudo apt-get install -y nodejs
    ```

6.  Install Visual Studio Code Insiders

    ```text
    https://code.visualstudio.com/docs/?dv=win64&build=insiders
    ```

7.  Create an alias for Visual Studio Code - Insiders

    ```bash
    echo 'alias c="'/mnt/c/Program\ Files/Microsoft\ VS\ Code\ Insiders/bin/code.exe'"' >> ~/.bashrc
    ```

8.  In Ubuntu, clone this repository

    ```bash
    cd $HOME
    git clone https://github.com/conradwt/rails-setup-guide-for-windows
    ```

9.  In Ubuntu, change directory to the cloned repository

    ```bash
    cd rails-setup-guide-for-ubuntu
    ```

10. In Ubuntu, install and configure RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    cd ~/.rbenv && src/configure && make -C src
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    source $HOME/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    ```

11. In Ubuntu, install all of the approved plugins RBenv plugins

    ```bash
    cd $HOME/rails-setup-guide-for-windows
    chmod +x install-rbenv-plugins.bash
    ./install-rbenv-plugins.bash
    ```

12. In Ubuntu, install Ruby 2.5.3

    ```bash
    rbenv install 2.5.3
    rbenv global 2.5.3
    ```

13. In Ubuntu, install Bundler and Rails

    ```bash
    gem install bundler
    gem install rails
    gem install rubocop
    rbenv rehash
    ```

14. In Ubuntu, set the Git completion

    ```bash
    cp $HOME/rails-setup-guide-for-windows/sample.git-completion.sh $HOME/.git-completion.sh
    echo 'source $HOME/.git-completion.sh' >> $HOME/.bashrc
    ```

15. In Ubuntu, install Heroku Toolbelt

    ```bash
    curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
    ```

16. In Ubuntu, create a Github.com account

    ```
    Note:  Skip this step if you already have an account.
    ```

17. In Ubuntu, create Git configuration and global files

    ```
    cp $HOME/rails-setup-guide-for-windows/sample.gitconfig ~/.gitconfig
    cp $HOME/rails-setup-guide-for-windows/sample.gitignore_global ~/.gitignore_global
    ```

18. In Ubuntu, edit .gitconfig file

    Note: `code` editor is being used but you can use any editor to make the
    modifications to the `.gitconfig` file.

    - change `excludesfiles` setting:

      ```text
      excludesfile = /Users/<your user name>/.gitignore_global
      ```

      Note: `<your user name>` should be replaced with your actual user name within Ubuntu.

- change name and email address settings:

  ```text
  name = <your firstname lastname>
  email = <your e-mail address>
  ```

  to the text for your `name` and `e-mail` that you're using for Github.com:

  e.g.

  ```text
  name = John Doe
  email = john.doe@example.com
  ```

19. Copy SSH keys from Vagrant, Codenvy, or other environment to the following directory:

    ```bash
    /mnt/c/Users/your-user-name/.ssh
    ```

20. In Ubuntu, copy SSH keys from Windows 10 shared directory to Ubuntu

    ```bash
    cp -r /mnt/c/Users/your-user-name/vagrant/src/.ssh $HOME
    ```

    Note: change your `your-user-name` to the one being used on Windows.

21. In Ubuntu, update the SSH files' permissions

    ```bash
    chmod 700 $HOME/.ssh
    chmod 600 $HOME/id_rsa
    chmod 644 $HOME/id_rsa.pub
    ```

## Support

Bug reports and feature requests can be filed here:

- [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-ubuntu/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2018 - 2019 Conrad Taylor. All Rights Reserved.
