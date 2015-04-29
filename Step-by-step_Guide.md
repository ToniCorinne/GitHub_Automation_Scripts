Step-by-step guide
===================
**Note: in this example, we are creating a repo for the LED Driver Breakout -TLC5940 (16 Channel) BOB-10616 and the associated library.
 
 Product Repository Creation
-----------------------------
 
1. Create new repository on GitHub.com
	a. Create it under the SparkFun organization
	b. Set it to private
	c. Repository name: LED_Driver_Breakout-TLC5940
	d. Bugzilla bug name: LED Driver Breakout - TLC5940
2. Clone LED_Driver_Breakout-TLC5940 repository locally
	a. $git clone https://github.com/sparkfun/LED_Driver_Breakout-TLC5940.git
3. Copy the file structure in from SFE_Repo_Template master branch
	a. $git pull https://github.com/sparkfun/SFE_Repo_Template.git master
	b. Delete any directories that are not necessary for the project. In this case, we do not need Enclosure or Software directories.
4. Add Hardware files to \Hardware directory.
	a. SparkFun_LED_Driver_Breakout-TLC5940.brd
	b. SparkFun_LED_Driver_Breakout-TLC5940.sch
5. Add example sketches to \Firmware directory.
	a. SparkFunHangingLEDArrayPongDemo.ino
6. Add Libraries to library directory
	a. $git subtree add -P Libraries/Arduino --squash https://github.com/sparkfun/SparkFun_TLC5940_Arduino_Library.git master
	b. If you need to pull in library updates, $git subtree pull -P Libraries/Arduino --squash https://github.com/sparkfun/SparkFun_TLC5940_Arduino_Library.git master
7. Add panel files to \Production directory.
	a. SparkFun_LED_Driver_Breakout-TLC5940-Panel-v12.brd
	b. SparkFun_LED_Driver_Breakout-TLC5940-GiantPanel-v12.brd
8. Update README.md to link to product page and hookup guide.	
9. Tag repository. 
	a. $git tag -a V_H1.2_L1.0.0 -m 'Hardware version 1.2, library version 1.0.0' <most recent commit hash>
	b. $git push --tags

	
Library Repository Creation
---------------------------

1. Create new repository on GitHub.com
	a. Create it under the SparkFun organization
	b. Set it to private
	c. Repository name: SparkFun_TLC5940_Arduino_Library (This library covers multiple products and is a branch of a library released externally to SparkFun. If it were designed **only** for our breakout, the name should be SparkFun_LED_Driver_Breakout-TLC5940_Arduino Library)
2. Clone SparkFun_TLC5940_Arduino_Library locally
	a. $git clone https://github.com/sparkfun/SparkFun_TLC5940_Arduino_Library.git
3. Copy the file structure in from SFE_Repo_Template arduino-lib-repo branch.
	a. $git pull https://github.com/sparkfun/SFE_Repo_Template.git arduino-lib-repo
4. Add .cpp and .h to \src directory
	a. SparkFunTLC5940.cpp
	b. SparkFunTLC5940.h
5. Add Example sketch to \examples directory
	a. SparkFunExample1\SparkFunExample1.ino (Remember, examples must be in a same-name directory to be available in the IDE drop-down menu).
6. Fill in library.properties file information.
	a. name=SparkFun TLC5940
	b. version=1.0.0
	c. author =Alex, SparkFun Electronics <techsupport@sparkfun.com> (We give Alex credit first since we are forking his library and modifying it). 
	c. Maintainer=SparkFun Electronics <sparkfun.com>
	d. Sentence=Library for the TLC5940 IC. 
	e. Paragraph=The TLC5940 gives the user 16 channel PWM control and can be daisy chained over the serial interface. This library works with the <a href="https://www.sparkfun.com/products/10616">SparkFun LED Driver Breakout</a> and the <a href="https://www.sparkfun.com/products/10615">SparkFun PWM Shield</a>.
	f. category=Signal Input/Output (Check the Arduino Library specs for the category options).
	g. url=https://github.com/sparkfun/SparkFun_TLC5940_Arduino_Library
	h. architectures=avr
7. Commit and push all changes to library repo.
	a. $git add --all
	b. $git commit -m 'Updating library.properties file, adding library code.'
	c. $git push origin master
8. Tag new library release. 
	a. $git tag -a V_1.0.0 -m 'Library version 1.0.0' <most recent commit hash>
	b. $git push --tags
9. Double check hardware repo to make sure subtree changes are pulled in. 