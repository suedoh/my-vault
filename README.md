# my-locker

How to use this project

1. build docker image
   `docker build -t my-vault:latest .`

2. fire up container
   `docker run -it my-vault`

3. run encrypt script to hash files in the vault folder
   this can be done using the following command:
   `sh /script/encrypt.sh`
   or see the alias found in `.bashrc`

4. copy the encrypted file from vault to locker folder in repo
   `docker cp <containerId>:/vault /home/user/workdir/repo/locker`

`.bashrc` includes aliases for commonly used commands
