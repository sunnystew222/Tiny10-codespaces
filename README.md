# Tiny10 on GitHub Codespaces
This is a working method to get Tiny10 working on GitHub Codespaces. It utilizes noVNC and AQEMU.
## Step 1: Make the codespace
First, go to [GitHub Codespaces](https://github.com/codespaces). Click the create codespace button and make sure to select 4-core. For the repo, select sunnystew222/Tiny10-Codespaces. For the location, choose whatever you want. After creating the codespace, you have completed 90% of the thing.

## Step 2: Run initialsetup.sh
It might not have permission to open, if it doesn't, run `chmod +x initialsetup.sh` and then run `./initialsetup.sh`. Let the script do it's thing and read the last few lines after the script exits because the script has some really important info. If you don't want to read it after the script finishes, here it is.

```
After opening the NoVNC client, hit Alt+P and type 'aqemu'.
AQEMU will warn you that you are running it as root, just click no and ignore.
In the Find QEMU setup step be sure to click the search button or else it will break.
```