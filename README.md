Scripts to easily install some utilities I like to have around on my Unraid server, that get lost everytime I reboot it.

All-in-one command to run after a reboot:

```
curl -fsSL https://raw.githubusercontent.com/lambdan/unraid-utility-installers/refs/heads/main/ffmpeg.sh | sh
curl -fsSL https://raw.githubusercontent.com/lambdan/unraid-utility-installers/refs/heads/main/rsgain.sh | sh
curl -fsSL https://raw.githubusercontent.com/lambdan/unraid-utility-installers/refs/heads/main/vim.sh | sh
```
