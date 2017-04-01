all:
	@echo read the makefile

# generate the file for cix	
cm:
	zip cm cixman.html

valid:
	onsgmls -s cixman.html

export-git:
	make -f export-to-git.mk all push

 
