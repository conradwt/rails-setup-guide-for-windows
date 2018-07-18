# Rails Setup Guide For Ubuntu

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

## Pre-Installation Steps (Window 10 Users Only)

https://www.hanselman.com/blog/TheYearOfLinuxOnTheWindowsDesktopWSLTipsAndTricks.aspx

Note: Install Ubuntu from the Windows Store.

## Installation Steps

1.  download and install general development tools

```bash
sudo su -

apt-get update -y && apt-get install -qq -y --no-install-recommends \
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
 snapd
```

2.  download, install, and configure PostreSQL 10.x

```bash
apt-get --purge remove postgresql \
 postgresql-9.5 \
 postgresql-client-9.5 \
 postgresql-client-common \
 postgresql-common \
 postgresql-contrib-9.5

add-apt-repository 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main'

apt-get install wget -y

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

apt-get update -y && apt-get upgrade -y

apt-get install postgresql-10 postgresql-client-10 -y && apt-get upgrade -y

service postgresql start
```

3.  download and install Node 10.x

```bash
curl -sL https://deb.nodesource.com/setup_10.x | bash -

sudo apt-get install -y nodejs
```

4.  clone this repository

```
$ git clone https://github.com/conradwt/rails-setup-guide-for-ubuntu
```

5.  change directory to the cloned repository

```
$ cd path/rails-setup-guide-for-ubuntu
```

6.  install and configure RBenv

```bash
exit

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

cd ~/.rbenv && src/configure && make -C src

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

source ${HOME}/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc
```

7.  install all of the approved plugins RBenv plugins

```bash
cd ${HOME}/rails-setup-guide-for-ubuntu

chmod +x install-rbenv-plugins.sh

./install-rbenv-plugins.sh
```

8.  install Ruby 2.5.1

```bash
rbenv install 2.5.1

rbenv global 2.5.1
```

9.  install Bundler 1.16.x and Rails 5.2.0

```bash
gem install bundler

gem install rails -v 5.2.0

rbenv rehash
```

10. set the Git completion

```bash
cp ${HOME}/rails-setup-guide-for-ubuntu/sample.git-completion.sh $HOME/.git-completion.sh

echo 'source $HOME/.git-completion.sh' >> ${HOME}/.bashrc
```

11. install Heroku Toolbelt

```bash
sudo snap install heroku --classic
```

12. create a Github.com account

```
Note:  Skip this step if you already have an account.
```

13. create Git configuration file

```
$ cp ${HOME}/rails-setup-guide-for-ubuntu/sample.gitconfig ~/.gitconfig
```

14. In Windows 10, install Visual Studio Code Insiders

```
https://code.visualstudio.com/insiders/#win
```

15. create an alias for Visual Studio Code - Insiders

Using an Ubuntu shell, perform the following action:

```bash
echo 'alias code="'C:\Program Files\Microsoft VS Code Insiders\bin\code.exe'"' >> ~/.bashrc
```

16. edit .gitconfig file

Note: `atom` editor is being used but you can use any editor to make the
modifications to the `.gitconfig` file.

change the text on the right side of the equal:

      name = <your firstname lastname>
      email = <your e-mail address>

to the text for your `name` and `e-mail` that you're using for Github.com:

    e.g.

    name = John Doe
    email = john.doe@example.com

17. Setup sharable directories between Windows and Ubuntu (Window 10 Users Only)

```bash
wslpath "c:\Users\your-user-name\Desktop" /mnt/c/Users/your-user-name/Desktop

wslpath "c:\Users\your-user-name\firehose" /mnt/c/Users/your-user-name/firehouse

ln -s /mnt/c/Users/your-user-name/firehouse $HOME/firehose
```

Note: change your `your-user-name` to the one being used on Windows and Ubuntu.

18. copy SSH keys from Vagrant to Ubuntu (Window 10 Users Only)

In Vagrant, performing the following actions:

```bash
cp -r $HOME/.ssh $HOME/src/.
```

In Windows 10, perform the following actions:

```bash
copy `path\to\vagrant\src\.ssh` to `c:\Users\your-user-name` directory
```

Finally, in Ubuntu, perform the following actions:

```bash
chmod 700 $HOME/.ssh
cd ${HOME}/.ssh
chmod 600 id_rsa
chmod 644 id_rsa.pub
```

$ = stuff that you type in the terminal

## Support

Bug reports and feature requests can be filed for the <add project here> project here:

- [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-ubuntu/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2018 Conrad Taylor. All Rights Reserved.
