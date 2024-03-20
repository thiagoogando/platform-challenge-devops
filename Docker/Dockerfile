FROM node:21.7-alpine

RUN adduser -h /var/nodeapp \
      -s /bin/bash \
      -D nodeapp
WORKDIR /var/nodeapp

COPY ./app/*.* ./ 

RUN chown nodeapp:nodeapp app.js

RUN npm install express

EXPOSE 3000

USER nodeapp

CMD [ "node", "app.js"]