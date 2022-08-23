![genesis](./michelangelo.jpg)

# genesis
Scripts to run on a fresh Ubuntu installation to make the environment habitable

Like *God* did, with the *Earth*, but this is *Ubuntu*, same thing


##### Copy these files locally, run later
```bash
   wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_1-system-apps.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_2-mysql.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_3-gui-apps.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_4-my-projects.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_test.sh -q \
&& echo "Downloaded files:" \
&& ls | grep "gen_"
```


#### Do you feel lucky, punk?
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_1-system-apps.sh)"
```
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_2-mysql.sh)"
```
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_3-gui-apps.sh)"
```
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_4-my-projects.sh)"
```
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_test.sh)"
```
