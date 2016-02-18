# Linux

Welcome to the dark side! Let's get started in building this ROM.

1. Open the terminal and install some essential parts to compile this ROM with the following command:

```bash
sudo apt-get install -y build-essential kernel-package libncurses5-dev bzip2 openjdk-7-jdk openjdk-7-jre git p7zip-full unzip zip unrar rar schedtool bison curl flex gnupg gperf libesd0-dev liblz4-tool libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev
```

2. Now make a folder for the ROM to go in

```bash
	mkdir -p ~/android/JFLTE-GPE
```

3. Ok, now we will clone some repositories for the ROM, including this one, using this command sequence:-

```bash
	cd ~/android/JFLTE-GPE
	git clone -b GED-5.1 --single-branch https://github.com/JDCTeam/GPE-JF ROM
```

4. Now we can build, by doing the following

```bash
	cd ~/android/JFLTE-GPE/ROM
	./build
```

You can choose from a range of options, but #1 will build the ROM for you and create a folder here "~/android/JFLTE-GPE/dist" where you can find your ROM to flash
However choosing 1 requires a 10GB download and 700MB zip since it includes GAPPS

To download and install gapps separately, choose #5, then #4, then #3, then #2, and check the dist folder for your zip

Only Supported GAPPS Package: OpenGAPPS Super
