
TARGETS=oss-intro.html git-basic.html git-branch.html git-remote-github.html git-remote-branch.html github-issue.html

html: $(TARGETS)

all: html

%.html : %.md boilerplate.html
	sed -e '/<textarea id="source">/r $<' boilerplate.html > $@

clean:
	rm $(TARGETS) 

