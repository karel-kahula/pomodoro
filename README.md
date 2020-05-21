# 🍅
A lightweight Pomodoro script.

## Installation (optional)

```
make install
```

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
