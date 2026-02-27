.POSIX:

install: check-deps
	cp -f pomodoro /usr/local/bin

uninstall:
	rm -f /usr/local/bin/pomodoro

check-deps:
	@command -v terminal-notifier >/dev/null 2>&1 || { \
		echo "Error! install terminal-notifier:" \
		echo "brew install terminal-notifier" \
		exit 1; \
	}

.PHONY: install uninstall check-deps
