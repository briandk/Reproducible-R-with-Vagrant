## Five Easy Steps to a Reproducible R Research Environment

1. [Install Vagrant](https://www.vagrantup.com/downloads.html) and (if you don't already have it) [install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Copy [the `Vagrantfile`][Vagrantfile] and [shell provisioning script][provisioner] to your project's root directory.
3. In the shell:
      
      ```bash
      # Navigate to your project
      $ cd path/to/my/awesome
      
      # Vagrant Up That Business
      $ vagrant up
      ```
      
4. Point your browser to [`http://127.0.0.1:4567`][localhost] and login with `vagrant`/`vagrant`.
5. In RStudio, you'll find your entire project under the directory `/vagrant/`. [Files will get synced automatically][filesync]
    



[Vagrantfile]: https://raw.githubusercontent.com/briandk/Reproducible-R-with-Vagrant/master/Vagrantfile
[provisioner]: https://raw.githubusercontent.com/briandk/Reproducible-R-with-Vagrant/master/bootstrap.sh
[localhost]: http://127.0.0.1:4567
[filesync]: http://docs.vagrantup.com/v2/getting-started/synced_folders.html

