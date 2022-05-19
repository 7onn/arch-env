default: help
help:
	@echo ""
	@echo "Available commands:"
	@echo ""
	@echo "> make backup"
	@echo ""
	@echo ""

datetime    := $(shell date '+%Y%m%d%H%M%S')
dir         := /tmp/$(datetime)
codetarfile := $(datetime)-code.tar.gz

code-backup:
	mkdir $(dir)
	cp -r ~/l ~/w $(dir)/
	du -hcs $(dir)
	rm -rf $(dir)/*/*/.git
	du -hcs $(dir)
	tar -czf $(dir)/$(codetarfile) $(dir)/w $(dir)/l
	gdrive upload $(dir)/$(codetarfile) -p $$(gopass show drive.google.com/devbytom/dev/id) --name code-bkp.tar.gz
	rm -rf $(dir)

code-tar:
	mkdir $(dir)
	tar -czf $(dir)/$(codetarfile) ~/w ~/l

backup:
	~/.scripts/flashdrive_backup.sh
