all:

install:
	install -m +r,u+w src/crunch-mime.xml /usr/share/mime/packages/crunch-mime.xml
	install -m +r,u+w src/crunch.thumbnailer /usr/share/thumbnailers/crunch.thumbnailer
	install -m +rx,u+w src/crunch_thumbnailer.sh /usr/bin/crunch_thumbnailer.sh

uninstall:
	rm /usr/share/mime/packages/crunch-mime.xml
	rm /usr/share/thumbnailers/crunch.thumbnailer
	rm /usr/bin/crunch_thumbnailer.sh

update-db:
	update-mime-database /usr/share/mime
