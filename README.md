# mac-auto-setup
Auto setup system for macOS.

## macOS version
macOS Mojave 10.14.6

## Downloads
To get started please run:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/gingama4/mac-auto-setup/master/download.sh)"
```

## Installation
To get started please run:
```
~/mac-auto-setup/setup.sh
```
Install GUI apps:
```
~/mac-auto-setup/app.sh
```
Install App Store apps:
```
~/mac-auto-setup/appstore.sh
```
Update apps and settings:
```
~/mac-auto-setup/update.sh
```

## Apps config file
| Apps | Config | Remarks |
|:----------:|:-----------|:-------------|
|keychain Access|`~/Library/Keychains/*.keychain`<br>or iCloud|keychain password is login password|
|SSH|`~/.ssh/config`<br>`~/.ssh/[Key file]`|-|
|Xcode|`Preference > Fonts & Colors > Dusk`<br>`Preference > Accounts import *.developerprofile`|-|
|Slack|`~/Library/Containers/com.tinyspeck.slackmacgap/Data/Library/Application Support/Slack/storage/*`|-|
