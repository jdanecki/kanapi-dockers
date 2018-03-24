all: sbs_build bbs_build

ui: x11_build gui_build apps_build

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

x11_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:x11" ; fi
	cd x11; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:x11" ; fi

gui_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:gui" ; fi
	cd gui; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:gui" ; fi

apps_build:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:apps" ; fi
	cd apps; ./build ; if [ "$$?" = "0" ] ; then cd .. ; else false; fi
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:apps" ; fi

test:
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:start:testing" ; fi
	docker ps -a
	docker images
	@if [ "$${TRAVIS}" = "true" ] ; then echo "travis_fold:end:testing" ; fi
