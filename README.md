# Audi's dotfiles
The dotfiles to help setting macOs enviroment

## A friendly reminder if you want to try my dotfiles

🚨 Warning: before you use my dotfiles to installing macOs enviroment please review the code first.



## Installation

1. Install x-code through app store

If you already have x-code update your x-code to the latest

```
sudo softwareupdate -i -a
xcode-select --install
```
2. Generate a new public key and private SSH key by running this command

```
curl https://raw.githubusercontent.com/AudiWu/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
```

3. Clone this repo

4. Run the install.sh file 

```
cd script
./install.sh
```