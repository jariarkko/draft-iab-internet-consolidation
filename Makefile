LIBDIR := lib
include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update $(CLONE_ARGS) --init
else
	git clone -q --depth 10 $(CLONE_ARGS) \
	    -b master https://github.com/martinthomson/i-d-template $(LIBDIR)
endif

cleantrash:
	rm -f *~

diff:	draft-arkko-internet-consolidation.txt
	rfcdiff draft-arkko-internet-consolidation-00.txt draft-arkko-internet-consolidation.txt

copycompile:
	ssh jar@arkko.eu 'rm -rf draft-iab-internet-consolidation'
	ssh jar@arkko.eu 'mkdir draft-iab-internet-consolidation'
	scp -qrp * .??* jar@arkko.eu:draft-iab-internet-consolidation
	ssh jar@arkko.eu 'cd draft-iab-internet-consolidation; make; make diff'
	scp jar@arkko.eu:draft-iab-internet-consolidation/draft-arkko-internet-consolidation.txt .
	scp jar@arkko.eu:draft-iab-internet-consolidation/*.html .
