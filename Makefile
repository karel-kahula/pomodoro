.POSIX:

install: check-deps check-notify
	cp -f pomodoro /usr/local/bin

uninstall:
	rm -f /usr/local/bin/pomodoro

check-deps:
	@command -v terminal-notifier >/dev/null 2>&1 || { \
		echo "Error! install terminal-notifier:"; \
		echo "brew install terminal-notifier"; \
		exit 1; \
	}

check-notify: check-deps
	@if terminal-notifier -title "🍅 Pomodoro" -message "Notifications are working" -sound default >/dev/null 2>&1; then \
		echo "Sent a test notification. If no toast appeared, check"; \
		echo "System Settings > Notifications > terminal-notifier (style, Focus)."; \
	else \
		echo "Warning! terminal-notifier is not allowed to post notifications."; \
		echo "Turn on Allow Notifications for terminal-notifier in the settings pane that just opened."; \
		open "$$(brew --prefix terminal-notifier 2>/dev/null)/terminal-notifier.app" 2>/dev/null || true; \
		open "x-apple.systempreferences:com.apple.Notifications-Settings.extension" 2>/dev/null || true; \
	fi

.PHONY: install uninstall check-deps check-notify
