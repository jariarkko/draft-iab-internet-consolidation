
all:	draft-iab-internet-consolidation.txt \
	copy

draft-iab-internet-consolidation.txt:	draft-iab-internet-consolidation.xml
	scp draft-iab-internet-consolidation.xml jar@arkko.eu:
	ssh jar@arkko.eu xml2rfc draft-iab-internet-consolidation.xml
	scp jar@arkko.eu:draft-iab-internet-consolidation.txt .

copy:	draft-iab-internet-consolidation.txt
	scp draft-iab-internet-consolidation.xml \
	    draft-iab-internet-consolidation.txt \
	    jar@cloud1.arkko.eu:/var/www/www.arkko.com/html/ietf/iab
