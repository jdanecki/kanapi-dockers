all: sbs_build bbs_build

sbs_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:sbs" ; fi
	cd sbs; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:sbs" ; fi

bbs_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:bbs" ; fi
	cd bbs; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:bbs" ; fi

cli_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:cli" ; fi
	cd cli; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:cli" ; fi

test:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:testing" ; fi
	docker ps -a
	docker images
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:testing" ; fi
