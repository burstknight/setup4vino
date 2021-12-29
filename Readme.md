# setup4vino.sh

-------------------------------------------------------------------

## Motive
  I develop some applications on the NVIDIA Jeston AGX Xavier 
devices. I have requirment that I use remote NVIDIA Jeston devices. 
In the NVIDIA device, the OS has a built-in program `vino` that is 
vnc server. In order to easily setup the settings for vnc server, 
I wrote scrip file.

## Usage
You can use the commands to install vino:
```bash    
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vino
```
And then you can run the script file in the directory `script`:
```bash
sh script/setup4vino.sh
```

## Reference
- [Setup VNC server by NVIDIA](https://developer.nvidia.com/embedded/learn/tutorials/vnc-setup)
