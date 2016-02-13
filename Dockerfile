FROM michbil/wrio:latest
MAINTAINER denso.ffff@gmail.com

# Storage
COPY package.json /srv/package.json
RUN cd /srv/ && npm install # packages are installed globally to not modify titter directory
COPY . /srv/www/


EXPOSE 5002
CMD cd /srv/www/ && rm -fr node_modules && nodemon server.js
