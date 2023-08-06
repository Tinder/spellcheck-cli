script ?= spellcheck
prefix ?= /usr/local

.PHONY: install
install: uninstall
	install -d "$(prefix)/bin"
	install "$(script)" "$(prefix)/bin"

.PHONY: uninstall
uninstall:
	rm -f "$(prefix)/bin/$(script)"

.PHONY: test
test:
	@./test
