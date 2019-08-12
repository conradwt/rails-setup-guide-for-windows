# Local Testing

0.  creating a VM

    ```bash
    docker run --rm -it ubuntu:18.04 /bin/bash
    ```

1.  install sudo

    ```bash
    apt-get install sudo -y
    ```

2.  create a non-root user

    ```bash
    adduser conradwt
    ```

3.  add the user to sudoers list

    ```bash
    usermod -aG sudo conradwt
    ```

4.  swicth to user account

    ```bash
    su - conradwt
    ```

## Reference

How To Create a Sudo User on Ubuntu - https://www.digitalocean.com/community/tutorials/how-to-create-a-sudo-user-on-ubuntu-quickstart
