HTMLTARGET=ara:/var/www/docs/python-gavo

ALL_HTML=userman.html querulator_devel.html querulator_user.html

%.html: %.rstx
	rst2html $< >$@


all: html

html: $(ALL_HTML)

install: html
	rsync -av $(ALL_HTML) $(HTMLTARGET)
	
