
TARGETS=oss-intro.html git-basic.html git-branch.html git-remote-github.html

html: $(TARGETS)

all: html

%.html : %.md boilerplate.html
	sed -e '/<textarea id="source">/r $<' boilerplate.html > $@

clean:
	rm $(TARGETS) 

