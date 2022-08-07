## Find The Package You Want To Uninstall

First things first, we need to find the package which we want to uninstall. We can very easily locate our package’s exact name with the following :

`$ dpkg --list |` `grep` `<package-name>`

This helps us to locate the exact package which we would require for the future steps. Once, we have located out desired package, we can move onto the next step.

## Uninstalling Packages With Apt

When talking about uninstalling packages using [apt package manager](https://www.linuxfordevices.com/tutorials/linux/apt-command-in-linux), we have the following two options :

-   remove
-   purge

### 1. Using **_apt remove_**

To remove a package using ‘_**remove**_‘ simply type :

`$` `sudo` `apt remove <package-name>`

### 2. Using **_apt purge_**

We can very easily remove packages with the ‘_**purge’**_ command as such :

`$` `sudo` `apt purge <package-name>`

### What’s the difference between ‘**_remove_**‘ and ‘**_purge_**‘ ?

So the begging question here is ‘**_remove_**‘ and ‘**_purge_**‘ and when to use what ?

The primary difference being ‘**_remove_**‘ and ‘**_purge_**‘ is that ‘**_remove_**‘ only gets rid of the package leaving any configuration files untouched. Whereas ‘**_purge_**‘ not only removes the package but also removes all configuration files OUTSIDE THE HOME DIRECTORY.

### A Fun Little Secret

Quite contrary to what their primary function is, both ‘**_purge_**‘ and ‘**_remove_**‘ can be used to **INSTALL** packages. This can be achieved by appending a ‘**_+_**‘ at the end of the package name as such :

`$` `sudo` `apt <remove``/purge``> <package-name>+`

### Post Uninstall Clean Up

At this point, we have successfully removed/purged our package. Now, we can run some commands to perform post-removal clean up out of good practice

We can clear the cache of the old/outdated packages with :

`$` `sudo` `apt clean`

We can remove unrequired packages with :

`$` `sudo` `apt autoremove`

Finally, any failed/broken installs can be fixed with :

`$` `sudo` `apt -f` `install`

### Conclusion

Thus we learnt how we can easily remove packages from Debian/Ubuntu based system using the **_apt_** package manager.