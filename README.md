# New machine config

1. Full system update
2. Install packages from arch repos
```bash
    cd packages
    sudo ./install-apps.sh
    ./install-aur.sh
    ./fix-trackpad.sh (only needed with multi-touchs while libinput is sucking...)
```
3. Create dev folders and download misc software
```bash
    cd scripts
    ./make-dirs.sh
    ./setup-dev.sh
```
4. Link configuration files
```bash
    cd stow
    (probably needs a script to remove existing stuff)
    stow -vt ~ *
```
5. Create a new SSH key, upload it do github and test it, after test fix the remote url to use ssh
```bash
    scripts/create-ssh-keys.sh (might have to fix ~/.ssh/config)
    ssh -T git@github.com
    scripts/fix-remote.sh
```
6. Install vscode extensions
```bash
    vscode/install-extensions.sh
```
7. Download eclipse and extract to ~/dev/applications/eclipse
8. Clone soma projects
```bash
    cd ~/dev/soma/
    git clone git@github.com:SOMA-App/soma-container.git
    git clone git@github.com:SOMA-App/soma-web-container.git (* verify scripts)
```
9. Development servers - given the sensitive content of some files this step need to be completed manually for now
