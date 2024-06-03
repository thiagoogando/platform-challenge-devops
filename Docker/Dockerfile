FROM node:22.2-alpine

RUN adduser -h /var/thiago \
      -s /bin/bash \
      -D thiago
WORKDIR /var/thiago

COPY ./app/*.* ./ 

RUN chown thiago:thiago app.js

RUN npm install express

EXPOSE 3000

USER thiago

CMD [ "node", "app.js"]