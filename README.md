# PULSE-FIX
Install Pulse connect in any Ubuntu based distro
Pulse connect does currently offer support for some Ubuntu-based distributions, this small script lets you run it on your computer

## Configuration

Edit [fix-pulse.sh](https://github.com/luisdiaz1997/PULSE-FIX/blob/master/fix-pulse.sh)

My distro is Pop! OS
```bash
grep -rl $OSNAME=$(lsb_release -d |grep -o "Ubuntu") tmp | xargs sed -i 's+grep -o "Ubuntu"+grep -o "Ubuntu\\|Pop"+g'
```
For example if yours is Zorin OS
```bash
grep -rl $OSNAME=$(lsb_release -d |grep -o "Ubuntu") tmp | xargs sed -i 's+grep -o "Ubuntu"+grep -o "Ubuntu\\|Zorin OS"+g'
```
## Installation

```bash
bash fix-pulse.sh
```

