FROM mpneuried/nodejs-alpine-buildtools-gm:latest
MAINTAINER KetchupBomb

RUN git clone https://github.com/exane/not-gwent-online.git && \
	cd not-gwent-online && \
	npm install && \
	npm run build && \
	sed -i 's/127.0.0.1/0.0.0.0/' public/Config.js

# On macOS, a file is incorrectly named and needs to be renamed
# RUN cp public/build/cards.PNG public/build/cards.css

EXPOSE 3000

ENTRYPOINT ["/usr/bin/node"]
CMD ["/not-gwent-online/server/server.js"]
