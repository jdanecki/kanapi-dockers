all: sbs_build

sbs_build:
	cd sbs; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi

bbs_build:
	cd bbs; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi

cli_build:
	cd cli; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi

test:
	docker ps -a
	docker images

