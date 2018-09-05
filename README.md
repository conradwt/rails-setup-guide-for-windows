# Rails Setup Guide For Ubuntu

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

## Pre-Installation Steps (Window 10 Pro Users Only)

https://www.hanselman.com/blog/TheYearOfLinuxOnTheWindowsDesktopWSLTipsAndTricks.aspx

Note: Install Ubuntu 18.04 from the Windows Store using the link [here](https://www.microsoft.com/en-us/p/ubuntu-1804/9n9tngvndl3q).

## Installation Steps

1.  In Ubuntu, download and install general development tools

```bash
sudo apt-get update -y && sudo apt-get install -qq -y --no-install-recommends \
 software-properties-common \
 git-core \
 build-essential \
 imagemagick \
 libmagick++-6-headers \
 libcurl3-dev \
 locales \
 nodejs \
 autoconf \
 bison \
 libssl-dev \
 libyaml-dev \
 libreadline6-dev \
 zlib1g-dev \
 libncurses5-dev \
 libffi-dev \
 libgdbm3 \
 libgdbm-dev \
 python-software-properties \
 snapd \
 ctags \
 unzip
```

2.  In Ubuntu, download, install, and start PostreSQL 10.x

```bash
sudo add-apt-repository 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main'
sudo apt-get install wget -y
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update -y -qq && sudo apt-get upgrade -y -qq
sudo apt-get install -y -qq \
  libpq-dev \
  postgresql-10 \
  postgresql-client-10 \
  postgresql-server-dev-10
```

3.  In Ubuntu, set the default PostgreSQL password

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
  postgres@6d0d30345e56:~$ psql
  psql (10.5 (Ubuntu 10.5-1.pgdg16.04+1))
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

4. In Ubuntu, start the PostgreSQL service

```bash
sudo service postgresql start
```

5. In Ubuntu, download and install Node 10.x

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

6.  In Windows 10, install Visual Studio Code Insiders

```
https://code.visualstudio.com/docs/?dv=win64&build=insiders
```

7.  In Ubuntu, create an alias for Visual Studio Code - Insiders

Using an Ubuntu shell, perform the following action:

```bash
echo 'alias code="'/mnt/c/Program\ Files/Microsoft\ VS\ Code\ Insiders/bin/code.exe'"' >> ~/.bashrc
```

8.  In Ubuntu, clone this repository

```bash
cd $HOME
git clone https://github.com/conradwt/rails-setup-guide-for-ubuntu
```

9.  In Ubuntu, change directory to the cloned repository

```bash
cd rails-setup-guide-for-ubuntu
```

10. In Ubuntu, install and configure RBenv

```bash
exit
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
source $HOME/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
```

11. In Ubuntu, install all of the approved plugins RBenv plugins

```bash
cd $HOME/rails-setup-guide-for-ubuntu
chmod +x install-rbenv-plugins.bash
./install-rbenv-plugins.bash
```

12. In Ubuntu, install Ruby 2.5.1

```bash
rbenv install 2.5.1
rbenv global 2.5.1
```

13. In Ubuntu, install Bundler and Rails

```bash
gem install bundler
gem install rails
rbenv rehash
```

14. In Ubuntu, set the Git completion

```bash
cp $HOME/rails-setup-guide-for-ubuntu/sample.git-completion.sh $HOME/.git-completion.sh
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
cp $HOME/rails-setup-guide-for-ubuntu/sample.gitconfig ~/.gitconfig
cp $HOME/rails-setup-guide-for-ubuntu/sample.gitignore_global ~/.gitignore_global
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

19. In Ubuntu, setup sharable directories between Windows and Ubuntu (Window 10 Users Only)

- path to `Desktop` directory

  ```bash
  wslpath "c:\Users\your-user-name\Desktop"
  ```

  If everything went well, it should have generated something similar to the
  following:

  ```text
  /mnt/c/Users/your-user-name/Desktop
  ```

- path to `firehose` directory

  ```bash
  wslpath "c:\Users\your-user-name\firehose"
  ```

  If everything went well, it should have generated something similar to the
  following:

  ```text
  /mnt/c/Users/your-user-name/firehouse
  ```

- create a symbolic link to your `firehose` directory

  ```bash
  ln -s /mnt/c/Users/your-user-name/firehouse $HOME/firehose
  ```

Note: change your `your-user-name` to the one being used on Windows and Ubuntu.

20. In Vagrant, copy SSH keys from Vagrant to Window 10 Pro

```bash
cp -r $HOME/.ssh $HOME/src/.
```

21. In Ubuntu, copy SSH keys from Windows 10 Pro to Ubuntu

```bash
cp -r /mnt/c/Users/your-user-name/vagrant/src/.ssh $HOME
```

22. In Ubuntu, update the SSH permissions

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

&copy; Copyright 2018 Conrad Taylor. All Rights Reserved.
