
Redwolf Twrp recovery for Harpia
=====================================

Current Status
--------------

Sulking
	
XDA thread
--------

https://forum.xda-developers.com/g4-play/development/recovery-redwolf-twrp-harpia-t3778561

Build Instructions
------------------
Create a build directory

	mkdir -p red
	cd red

Initialize your local repository using the REDWOLF trees:
     
	repo init -u git://github.com/RedWolfRecovery/rw_manifest.git -b rw

 For a shallow clone

	repo init --depth=1 -u git://github.com/RedWolfRecovery/rw_manifest.git -b rw

Now move your magic wand

	wget -O wolf.sh https://github.com/Akianonymus/redwolf_harpia/raw/master/wolf.sh	
	bash wolf.sh

Then to sync up:

     repo sync  --force-sync --force-broken --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)
     
Now start the build...

	. build/envsetup.sh 
	breakfast harpia && make clean
	make -j$(nproc --all) recoveryimage

Please see the [Redwolf Recovery website](https://redwolfrecovery.github.io/) for further information.
