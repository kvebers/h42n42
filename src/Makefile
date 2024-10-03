build:
	eliomc -c server.eliom
	eliomc -c client.eliom
	js_of_eliom -o js/main.js client.cmo
	ocsigenserver -c ocsigenserver.conf

clean:
	rm -rf _build

all: build