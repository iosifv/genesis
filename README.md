# genesis
Scripts to run on a fresh Ubuntu installation to make the environment habitable

Like *God* did, with the *Earth*, but this is *Ubuntu*, same thing


##### Copy these files locally, run later
```bash
   wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_1-system-apps.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_2-my-projects.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_3-gui-apps.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_4-mysql.sh -q \
&& wget https://raw.githubusercontent.com/iosifv/genesis/master/gen_test.sh -q \
&& echo "Downloaded files:" \
&& ls | grep "gen_"
```


#### Do you feel lucky, punk?
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_1-system-apps.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_2-my-projects.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_3-gui-apps.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_4-mysql.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/iosifv/genesis/master/gen_test.sh)"
```