> A simple little script to automate the repository creation process. It creates and pushes to a new github repository directly from the command line.
### Install: 
Clone this repo and copy the shell script to a location of your choice i.e. /usr/local/bin 
```bash
 git clone "https://github.com/mhagglun/RepositoryCreator.git"
```
Edit the shell script repositorycreator by replacing the <oAUTH token> with a personal access token generated from your [github page](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line). Make sure that it is given access to edit your repositories.

Also make sure that your github username is set by running
```bash
git config --global user.name
```
If your name is not set then simply add it by typing,
```bash
git config --global user.name "YOUR USERNAME"
```
When this is done simply make the script executable by running 
```bash
chmod +x /usr/local/bin/repositorycreator.sh
```

Finally add 
```bash
source /usr/local/bin/repositorycreator.sh
```
to your .bashrc or .zshrc

### Usage:
```bash
createRepo <YOUR REPOSITORY NAME>
```