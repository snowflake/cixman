ZIPNAME=cixman95
ZIPDIR=/root/software/cixman

all:
	@echo read the makefile
	
ci:
	cp cixman.html cixman.html.tmp
	cat cixman.html.tmp | tr -d '\015' > cixman.html
	ci -l cixman.html

zip:
	[ -f ${ZIPDIR}/${ZIPNAME}.zip ]
	zip ${ZIPNAME}.zip Makefile RCS/* *.txt *.html 00* *.awk *.sed
	cp ${ZIPNAME}.zip ${ZIPDIR}

# generate the file for cix	
cm:	ci
	zip cm cixman.html


export-git:
	make -f export-to-git.mk all push

 
