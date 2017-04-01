# export the Fossil repository to git.

# Note: the github repo was changed from vole to vole2 (2014-10-13)
dir=../cixman-git
marks=/tmp/marks1

all: directory-check
	mkdir -p ${dir}
	fossil export --git  > /tmp/vex1
	cat /tmp/vex1 \
		| ( cd ${dir} && git init && git fast-import --quiet  )
	-(cd ${dir} && git remote add origin git@github.com:snowflake/cixman.git)

push: directory-check
	cd ${dir} && git push --mirror

# check that we are in the right folder - the master source for fossil
directory-check:
	[ `pwd` = /Users/davidevans/Vienna-source/cixman ]
