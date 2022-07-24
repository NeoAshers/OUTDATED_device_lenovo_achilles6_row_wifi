# Device Tree for Lenovo Tab M10 FHD Plus (2nd REL WiFi) (achilles6_row_wifi)
## This is a WORK IN PROGRESS. Here be dragons.

The Tab M10 FHD Plus 2nd Generation (codenamed "achilles6_row_wifi") is a low-end tablet from Lenovo.
It was released in March 2020.

|                   Basic | Spec Sheet                                                    |
| ----------------------: | :------------------------------------------------------------ |
| Chipset                 | Mediatek MT6762T Helio P22T                                   | 
| CPU                     | Octa-core 4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53         |
| GPU                     | PowerVR GE8320                                                |
| RAM                     | 2/4 GB                                                        |
| Storage                 | 32/64 GB                                                      |
| Battery                 | Li-Po 7000 mAh, non-removable                                 |
| Dimensions              | 244.2 x 153.3 x 8.2 mm                                        |
| Display                 | IPS LCD, 1920 x 1200 pixels, 10.3" (~220 ppi)                 |
| Rear camera             | 8 MP, No flash                                                |
| Front camera            | 5 MP, No flash                                                |
| Shipped Android Version | 9.0 , upgradable to 10                                        |

![a6edab04959d1694919d8909978ea33c-3977590543-removebg-preview](https://user-images.githubusercontent.com/67978777/180082440-439e4513-d0bb-4f72-880d-0751ba5b57cf.png)
---
# Current known issues
- Deadboot. Simply bootloops on a fully black screen until you do a LMSA rescue.
---
# How to build
1. Repo sync the manifest for your chosen ROM (So far only tested on Android 12.1 ROMs, A11 GSIs boot)
2. Get prebuilt files (vendor,kernel) (NOTE: this is temporary, until someone makes vendor and kernel trees.)
    - Do a LMSA rescue, and get the files from C:\ProgramData\RSA\Download\RomFiles\TB_X606*\. 
    - You can also get them from [https://mirrors.lolinet.com/firmware/lenovo/Tab_M10_FHD_Plus_2nd_Gen/](https://mirrors.lolinet.com/firmware/lenovo/Tab_M10_FHD_Plus_2nd_Gen/).
    - After getting the files, unpack `boot.img`. Then, get the `kernel/zImage` file. Do not unpack the `vendor.img`
3. Place the files in the correct locations
    - Make a `prebuilt` folder, place the files in there.
4. Run `breakfast` and enter lineage_achilles6_row_wifi-userdebug
5. If `breakfast` shows no error, run `mka -j#` to build the ROM. (Replace -j# with the amount of threads you want to use. Eg: -j4)
6. Wait. If any errors related to the DT appear, report them in the `Issues` tab of this repository.
