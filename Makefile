.POSIX:

install:
	cp -f pomodoro /usr/local/bin

uninstall:
	rm -f /usr/local/bin/pomodoro

.PHONY: install uninstall
