all:
	@echo read the makefile

# generate the file for cix	
cm:
	zip cm cixman.html

valid:
	onsgmls -s cixman.html
	tidy 2>temp1 1>/dev/null cixman.html

export-git:
	make -f export-to-git.mk all push

 
