# Gamebox Product Firmware Update Guide

_Version 0.3_ ---- _17 May 2023_

# Required Materials

## Software

- Computer with Windows 10/11 installed
- Xilinx ISE Labtools
  - Installer download link file found in "STEP 2" folder in this repo
  - AMD/Xilinx Account creation required to start downloading
- Corresponding FWUPD\_\*\*\*.mcs firmware file for your product where \*\*\* is the product and firmware version
  - **RENAME FIRMWARE FILE TO "FWUPD.mcs" (no quotes) AND COPY TO THE "STEP 5 - Flash Firmware Update" FOLDER (if using the FlashUpdate.bat instead of iMPACT)**
  - [Click here for the FPGA firmware update repo on GitHub](https://github.com/GameboxSystems/Gamebox-Product-Firmware-Updates)

## Hardware

> Xilinx Platform Cable programmer
  - Can be found on Aliexpress for ~$20 or on Amazon for ~$40
    - [Aliexpress listing click here](https://www.aliexpress.us/item/2251832624576150.html?spm=a2g0o.productlist.main.1.d899ecafBL10Fz&algo_pvid=d810e90c-8c8d-4366-92da-8acfcb761078&algo_exp_id=d810e90c-8c8d-4366-92da-8acfcb761078-0&pdp_npi=3%40dis%21USD%2134.57%2123.51%21%21%21%21%21%402102111816839237601968764d07ee%2164548542145%21sea%21US%21168717347&curPageLogUid=3vz3E5S1Mryh)
    - [Amazon listings click here](https://www.amazon.com/s?k=xilinx+platform+cable&sprefix=xilinx+pla%2Caps%2C120&ref=nb_sb_ss_ts-doa-p_1_10)
  - This programmer can be used to update firmware on all Gamebox FPGA based products

~~**OR**~~

> ~~Raspberry Pi Pico (w and non-w fine)~~ **DETERMINED TO HAVE TO MANY BUGS TO SUPPORT**

## Notes

- ~~After Step 2, the process splits depending on what flashing hardware is chosen. Installs are split into 3a and 3b depending on the programmer chosen for the firmware upgrade.~~

## Changelog

- V0.3 - Removed Pi Pico support and adjust hierarchy accordingly
- v0.2 - Pi Pico XVC support added with install guide 
- v0.1 - Inital release with Xilinx platform cable support