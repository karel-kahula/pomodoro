# 🍅
A lightweight Pomodoro script.

## Installation (optional)

```
make install
```

### Notifications (macOS)
The end-of-timer toast is sent with [terminal-notifier](https://github.com/julienXX/terminal-notifier)
(`brew install terminal-notifier`), which needs permission to post notifications.
`make install` sends a test notification and opens the Notifications settings
pane if it's blocked (`make check-notify` runs just that check).
If no toast appears, run it once by hand to check:

```
terminal-notifier -title "🍅 Pomodoro" -message "test" -sound default
```

If that prints `Notifications are not allowed for this application`:

1. Register the app with macOS by launching it once:
   ```
   open "$(brew --prefix terminal-notifier)/terminal-notifier.app"
   ```
2. In **System Settings → Notifications → terminal-notifier**, turn on
   **Allow Notifications** and set the style to **Banners** or **Alerts**.
3. Make sure Focus / Do Not Disturb isn't hiding it.

## Uninstallation

```
make uninstall
```

## Usage

```
pomodoro COMMAND [<options>]
```

### Commands:
```
commands:
h, -h, --help
      Show this help message
b, begin, start
      Start the Pomodoro timer
e, end, stop
      Stop the Pomodoro timer
w, wind
      Start the Pomodoro by winding it up (mash some keys)
s, status
      Show current Pomodoro session start and end times

options:
-t <number>, --time <number>
      Set the Pomodoro timer in minutes
```

## install

`make install`

## uninstall

`make uninstall`

## Known Issues
- If mashing hard enough, the winder will show extra characters other than `*`.
- Putting your computer to sleep will pause the pomodoro timer.
