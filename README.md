# Viwoods AIPaper Reader Patcher
This repo includes some aggregated information about rooting and patching the Viwoods AIPaper Reader firmware, in particular to enable notifications.


## Viwoods AIPaper Reader notification unlocking guide

Resources:
- Complete guide: https://xdaforums.com/t/guide-unlock-bootloader-root-viwoods-reader-with-magisk.4772639/
- Notification unlocker latest: https://github.com/magcrider/Viwoods-Notification-Unlocker
- mtkclient: https://github.com/bkerler/mtkclient/tree/main
- Magisk install: https://topjohnwu.github.io/Magisk/install.html#patching-images
- Magisk development: https://topjohnwu.github.io/Magisk/guides.html
- adb on Linux: https://wiki.archlinux.org/title/Android_Debug_Bridge
- fastboot: https://source.android.com/docs/setup/test/running
- apktool: https://xdaforums.com/t/util-apr-19-2026-apktool-tool-for-reverse-engineering-apk-files.1755243/
  - https://apktool.org/wiki/the-basics/building/

## Procedure
This is detailed in the complete guide above, but for completeness this is the complete sequence for rooting:

1. Do a full backup via mtkclient
1. Enable developer options
1. Unlock bootloader via adb / fastboot
1. Enable Google services (must be done after unlocking bootloader since that wipes data, and before rooting since Google doesn't like rooted devices)
1. Root with Magisk
1. Install Magisk modules as desired

For patching, we'll need to patch the `system/framework/services.jar` file:

1. Run the Viwoods debug tools executable to use their custom adb (as the standard adb does not have access to certain commands)
1. Pull the `system/farmework/services.jar` file
1. Decompile with `apktool`: `apktool d -a services\(v1.5.6\).jar`
1. Use Claude to analyze and patch the relevant files
1. Recompile with `apktool`: `./.bin/apktool b ./v1.5.6/Viwoods-firmware/system/framework/services\(v1.5.6\).jar.patched.out`
1. Replace existing `module/system/framework/services.jar`
1. Zip module: `mkdir build && cd module && zip -r ../build/module.zip .`
1. Push module.zip to device and install as Magisk module

## Backing up with mtkclient

## Rooting with Magisk

## Using Viwoods debugger tool
