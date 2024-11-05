rem Simple script to run Nvidia SMI every 10 seconds on Windows. Nothing fancy, just a simple way to watch Nvidia GPU VRAM usage from a CLI on Windows. I know it works with driver version 456.xx, it probably works with others too. Go crazy with it. 

@ECHO OFF

:getsmi

nvidia-smi 

timeout /t 10 /nobreak

goto getsmi