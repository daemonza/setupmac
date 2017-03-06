### Setupmac

This is a [Ansible](https://www.ansible.com/) playbook to quickly setup 
a Mac to how I like it.

To setup run the following command :
```
curl -s https://raw.githubusercontent.com/daemonza/setupmac/master/start.sh | /bin/bash
```

The start.sh script installs `pip` and then `ansible` with pip.
Then git clone this repository and execute the `ansible` playbook which does
all the heavy lifting of setting your mac.

If you already have ansible installed or prefer running it directly, execure the following :
```
ansible-playbook -i ./hosts playbook.yml --verbose
```

The playbook use homebrew with cask to install most things. You can see a list of
what get's installed at [here](https://raw.githubusercontent.com/daemonza/setupmac/master/roles/setup/vars/main.yml). If you want to change the list of applications, clone
this repository, and edit this file, and run the `start.sh` script.

The applications it cannot install through homebrew get's downloaded to
`$HOME/Downloads`, it's up to you to install them from the Downloads directory.


#### Uninstall

If you want to undo all the changes that `setupmac` did, run 

```
start.sh uninstall
```
