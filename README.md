# genesis
Scripts to run on a fresh Ubuntu installation to make the environment habitable

Like *God* did, with the *Earth*, but this is *Ubuntu*, same thing


##### Copy these files locally
```bash
wget https://raw.githubusercontent.com/iosifv/genesis/master/i1-system-apps.sh \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/i2-my-projects.sh \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/i3-gui-apps.sh \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/i4-mysql.sh \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/test.sh
```


#### Do you feel lucky, punk?
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/i1-system-apps.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/i2-my-projects.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/i3-gui-apps.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/i4-mysql.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/test.sh)"
```