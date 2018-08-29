## From the old DSEO webpage:

It seems that Microsoft has forgotten end users when it introduced a very restricted module of driver signature enforcement in Windows Vista and Windows 7. All drivers and system files must be digitally verified or they cannot run when using both 32-bit and 64-bit versions of Windows Vista and Windows 7. In the past, it was possible to turn that feature off in Vista, but due to new kernel security updates, it is impossible to turn it off without degrading security and stability of your operating system or putting your master boot records in risk by using other software alternatives.

So what is the problem with digital certificates? Well, the problem is… developers have to pay Microsoft to receive verified certificates, and that makes many applications inaccessible under Windows Vista and Windows 7. However, it is still possible to turn it off by pressing the F8 function key during system boot up, but pressing F8 every time on boot up can be a serious pain in the butt. Others have found workarounds, but most of them are too risky and may trash your master boot records, at least until now thanks to our latest tool.

How does it work?
Microsoft is aware that developers cannot submit every beta build they are testing. Microsoft has provided a mode inside Windows Vista and Windows 7 that will allow developers to test their software before they submit it to Microsoft’s labs. Unfortunately, even in that test mode drivers and system files must have a test certificate before installation.

The good thing is that it does not have to be digitally verified. That means we can load drivers by creating our own unverified certificates. Do not worry! You do not have to do anything; our Driver Signature Enforcement Overrider will do everything for you.

False Positive Alert
It has come to our attention that several Antivirus suites have listed our Driver Signature Enforcement Overrider (DSEO) as a dangerous file. That's nonsense! DSEO is safe. These Antivirus suites are being used as a tool to remove software that Microsoft deems contrary to its outlook, instead of protecting the customer from dangerous files. Read more about it here.

Supported OSes
* Windows Vista 32-bit
* Windows Vista 64-bit
* Windows Server 2008 32-bit
* Windows Server 2008 64-bit
* Windows 7 32-bit
* Windows 7 64-bit

Changes
* Watermarks Removal Option
* Support for Windows 7
* Several Bug-fixes

So how do I use it?
First and foremost; you are using this software at your own risk, we do not take responsibility for any damages to your system, but we do not believe it can harm anyone anyway. Secondly, you must run DSEO with administrative privileges (Right click and choose Run as administrator).

1. Download the application from the link below. Right click on it and choose "Run as administrator". Inside its main menu, press on the “Enable Test Mode” button and follow the instructions on the screen. This will enable TESTSIGNING mode, which allows unverified system files to be loaded.

2. Now all you have to do is to add the unverified signature to the required system files. To do so press on the “Sign a System File” button from the main menu, and enter specific filename including full path. For example: if ATITool64.sys from C:\Windows\System32\drivers refuses to load due to driver signature enforcement, you should type: “C:\Windows\System32\drivers\ATITool64.sys”, and if you would like to sign more than a single file, just repeat this procedure until you’re done, and finally reboot.

After you enabled Test Mode and added signatures to the required system files, they should bypass Windows’s driver signature enforcement and load without any issues. However, if for some reason you are interested to revert it, you can re-launch the application, choose “Disable Test Mode” from the main menu, and reboot. If you encounter issues or having questions, feel free to post it on our forums.

Note: DSEO requires administrative privileges (Run as administrator).

# [Download](https://github.com/Finetundra/Tundras-Toasters/blob/master/Software/dseo13b.exe)
