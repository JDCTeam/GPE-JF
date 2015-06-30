# JFLTE-GPE

Visit [GitHub](https://github.com/MatthewBooth/JFLTE-GPE) for full source

Visit [UltimaROM](http://ultimarom.com) for downloads

Visit [MatthewBooth](http://github.com/MatthewBooth) for Developer information

### Changelog 20150630
* Added GoogyMax3 back as the default kernel
* STWeaks was readded after I mistakenly remove dit.
* Verizon default network value is 10, as per TouchWiz Lollipop values
* Updated APN and SPN's from CyanogenMod.
* Removed Archi Init, since everything is done via all the kernels we use.
* Updated Interface app to be clearer on the purpose of the new disable/enable menu to recents on buttons, and how to set them
* Updated some stock Gapps.

### Changelog 20150621
* Changed the method of assigning the buttons for disabling and menu-to-recents (flashes a file)
* Added GMail as default (again)
* Updated Google Exchange Services
* Updated Google Clock, WebView, Play Services, Photos
* Updated @Alucard24 kernel, removed the battery drain and fixed the IR blaster
* Updated NetworkMeter position from Optimised CM-12.1 and changed font to sans-serif-condensed
* Added some stock build.prop values from TouchWiz 5.0.1 build.prop (mostly OpenGL optimisations)
* Fixed wget for Alucard kernel's adblocking

### Changelog 20150614
* Fixed Google Keyboard
* Fixed OTA Updates not downloading properly (v2.4.5)

### Changelog 20150613
* Fixed Google Now FCing when used
* Made alucard_24's kernel the default 
	* Worked with him to rebase his GE5.0 kernel to be fully up to date
	* Christopher GCC 4.9.3 compiled
	* Optimised for speed (-O3)
* Removed all installer options now. Installer simply installs. Hulk or Googy kernel can be found in their threads
* Stock GE kernel in addons
* DPI changing in Interface app
* Fixed a small bug in OTA Updates, version is now v2.4.4
* Better supersu installation method in installer. Won't affect users, but makes it easier for me.
* New Android M default wallpaper
* Updated Google Camera, Keyboard and Chrome

### Changelog 20150610
* Emergency release to fix faulty clock issue
* Updated some Gapps that have had updates since the last release... because why not
* Rolled back Google Play Services to official versions
* Added SimpleFileExplorer as default, because we lacked a file manager. Why not ES File Explorer? It uploads data to China
* Updated Hulk Kernel to 1.3.1

### Changelog 20150601
* Still waiting for 5.1...
* Updated Google Photos to the newest version, the stand alone
* Updated OTA Updates to 2.4.2
* Updated Google Camera, Search, Services and Clock (DeskClockGoogle) to the Android M Preview versions
* Updated Chrome, Play Store and Keyboard
* New, better, AROMA theme

### Changelog 20150419
* Simplified installer options
* Many items moved to addons in the OTA app
* This sort of fixes the Exchange issues people had, since they can install GMail or AOSP Mail themselves
* Made updating prebuilt apps easier without having to issue a new ROM
* Removed hardswap stuff
* Updated Google Play, Search, Services and WebView

### Changelog 20150315
* Added AOSP Email. Removed Gmail as a result of this
* CM Calculator update
* Added CM Calendar (LP themed AOSP Calendar)
* Added Viper4Android
* Updated Play Store
* Updated AudioFX
* Updated Eleven
* Updated cLock
* Updated Chrome
* Updated Messaging (Google)
* Updated Google Play Services
* Updated Google Talkback
* Updated Google WebView
* Updated OTAUpdates app to 2.3.1
* Changed around the Google Dialer and Contacts theme a little. More true to Material Dark, now.
* Also changed the Dark Settings in the same way
* Updated the AROMA theming as well.

### Changelog 20150303
* Fixed the orientation bug. Both menu to recents and normal functions are working properly
* Updated Cyanogen Messaging source code to 20150301
* Updated Trebuchet source code to 20150301
* Updated AudioFX source code to 20150301 (includes new icon)
* Updated Eleven (Music) source code to 20150301 (includes new icon)
* Updated Cyanogen Browser source code to 20150301
* Updated Google Launcher
* Updated Google Play Services
* Updated Google App
* Updated Apex Launcher
* Updated Googy Max3 to 1.3.0 Final. Thanks Googy_Anas for all the hard work!
* Updated OTA Updates app. Better Lollipop theming (checked the official guides). Added some developer stuff (BitCoin donations now accepted)
* Added Alucard Kernel option in the installer
* Added option to not install a DSP (MusicFX, AudioFX, DSP Manager) in case you want to use Viper4Android instead (not included)


### Changelog 20150224
* Revert a commit regarding landscape navigation bar
* Remove menu to recents for now, might be back later
* Updated build.prop
* Some AROMA touch ups

### Changelog 20150223
* Boot animation memory leak fixed thanks to arter97
* Fixed System FC when expanding a content sensitive notification
* Network meter settings will now be properly themed white if stock settings is chosen in AROMA
* Landscape navigation bar will now properly hide if set to 0 dpi
* Updated SuperSU 2.46
* Updated OTAUpdater to 2.2
* Updated Googy kernel to 1.2.9
* Updated CM APNs
* Modded framework and apks now compiled with latest apktool
* Removed SNote preload data

### Changelog 20150210
* Updated Busybox to 1.23.0-Stericson
* Updated Google Apps
* Updated NetworkTraffic mod style to match the clock (font weight and style)
* Updated AROMA installer - now dark themed
* Added mDNIe Controls to Interface
* Added stock kernel option into AROMA
* Added a better autohide method into the Network Meter, including a threshold slider
* Added new method for disabling hardware buttons, also added ability to use Menu button as Recents, as has been requested a lot
* Added new method of turning off the hardware keys backlight (no more rebooting to change this)
* Added markdown parsing of the changelog in Settings (check Settings->About->ROM Changelog)
* Added Battery light (LED) controls
* Added quick pull down of the quick tiles
* Added alarm icon switching without having to toggle an alarm
* Added IME notification icon switching
* Added navigation bar height option (can be used to force soft menu key in apps if off)
* Added Ambient Display (on by default - this is default Android behaviour)
* Fixed OTAUpdates "cancel" button not updating to "install" when download finishes
* Fixed battery views and readded the text and landscape icons. Now shows on lockscreen properly
* Fixed clock mod to allow left clock using new CyanogenMod method
* Fixed NetworkTraffic mod not showing a single line correctly
* Fixed default Trebuchet layout
* Removed hidden battery init.d hack - new battery methods work properly now

### Changelog 20150128
* Patched colorfade memory leak in services.jar
* Network improvements for Verizon Wireless
* Removed debug code from OTA app
* Fixed spacing for U/D on network meter
* Fixed Calculator delete string for English UK
* Updates to our themed dialers
* Sound recorder updates, Can now record in mp4 and wav
* Compiled updated CM apps from source
* Update OTA info in build.prop


### Changelog 20150123
* Fixed tethering and enabled bluetooth tethering for all carriers
* Updated Chrome
* Updated Google Search
* Updated Google Play Services
* Updated AOSP Gallery
* Updated Live walpapers
* Updated the Inverted Teal phone/contacts app
* Updated Interface app
* Updated kernel to latest Googy 1.2.7
* Updated SuperSU
* Added full wipe option to aroma
* Added volume panel timeout options
* Added heads up timeout options
* Added long press to skip tracks
* Added hold back to kill current app
* Added clock mods
* Added CyanogenMOD browser option to AROMA
* Added hardware swap file options in AROMA
* Added CM Calculator
* Added a choice in AROMA for Eleven and Apollo music players
* Added AudioFX from CM12 to AROMA
* Removed Gear Manager as it's not working
* Removed WAV option from SoundRecorder, since it's not working
* Live walpapers are now optional in AROMA
* Updated build.prop

### Changelog 20150112
* Rebuilt from scratch to log our changes in GIT, results in cleaner work
* Enabled national roaming on most European virtual networks
* Dirty flashers should no longer need to clear interface app and data
* Fixed roaming for Videotron users in Quebec, Canada
* App ops added to security settings
* Device walpapers included in tiny .apk from source
* Updated Interface app
* Toggle for enable all rotations added to Interface
* Toggle for wake on unplug added to Interface
* Disabling battery icon in Interface will now stick after reboot
* Improved show 4g for LTE toggle
* AROMA improvements
* Motorola Gallery now optional in aroma, it goes amazing with Moto camera
* Oneplus Camera optional in AROMA, HDR and saving to SD card supported
* Inverted teal theme for dialer in contacts added to AROMA
* Custom DPI options in AROMA
* Improvements to the tethering script for some carriers
* Hide alarm clock toggle code simplified 
* Disabled safe media nag
* Removed a duplicate ringtone
* Updated OTA app
* Updated build.prop

### Changelog 20150105
* Even with 5.0.1 LRX22C - Unofficial 5.0.1
* Deodexed framework
* Fixed SMS for vodafone NL
* Increased the falsing threshold - merged from 5.0.1
* Voicemail now can be accessed by holding 1 for most carriers
* Some ADB fail safe fixes that were merged into 5.0.1
* Fixed SystemUI heads up notification spacing
* Ported CM Battery icons to the ROM
* Clear all in recents
* Extended power menu
* Toggle advanced power menu option in interface
* Updated OTA app - fixed open recovery script installation. Using markdown for changelog rendering
* Updated AdAway (fixes for 5.0)


### Changelog 20150102
* TeleService FC with certain languages is fixed
* Cleaned up Updater-Script in regards to setting default network for Sprint
* Googla Wallet is now optional in AROMA
* Google Sound Search is now optional in AROMA
* Apex will now install as intended via AROMA
* DSP or stock processing in AROMA
* Spanish translation for interface app thanks to marcuzzi
* Fixed Voice recorder 
* OTA app updates
* AROMA improvements
* Enabled HD-Voice for all, by default

### Changelog 20150101
* Implemented AROMA installer to customize your installation
* Updated to latest googy_max kernel 1.2.5
* Kernel will auto loki for AT&T/VZW
* Verizon and Sprint will boot with proper framework and CDMA settings right out of the box
* Added a fix for tethering on first boot. No need to reboot or issue a command in the shell
* Turn off experimental NuPlayer by default - Should help fix some audio stuttering issues once and for all
* Fixed FC's in Trebuchet Launcher
* SQlite3 will now work as intended
* Ported CM's Changelog feature into the GPE Settings.apk. Settings->About
* Added option for dark material Settings
* Added a choice for AOSP Messaging with quick reply
* AOSP Sound recorder
* Removed Adblocking by default, made AdAway an option in AROMA
* Added missing Emoji fonts from the Nexus 5
* Updated latest APN entires from CyanogenMod
* Added in Material Gallery from CM (Deleting from SD card now works)
* Added Moto Camera option. Moto Camera cannot shoot in HDR, but supports saving to SD
* Updated OTA Updater. Now correctly checks update on first boot and background services does run to check in time
* Updated Interface with some new icons and added ability to choose whether to disable hardware buttons when using onscreen navigation
* S-tweaks themed material and enhanced
* Updated Google Play Store and Google Camera
* Removed some unnecessary files from the zip
* Material UI themed cLock
