# Filename: Dockerfile
#
# --- BASE NODE ---
FROM alpine:latest AS basebackend
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

RUN apk add --update --no-cache shadow npm;
RUN useradd -m app              && \
    groupadd dockerapp          && \
    usermod -G dockerapp app

RUN apk del shadow;
WORKDIR /usr/src/app
RUN chown -R app:dockerapp /usr/src/app && \
    chmod -R ug+rxw /usr/src/app

COPY --chown=app:dockerapp ./package*json ./
RUN npm install -g cross-env

RUN ls -al
#
# --------- DEPENDENCIES ----------
FROM basebackend AS dependencies
USER app

# If you are building your code for production
RUN npm ci --only=production
COPY --chown=app:dockerapp . .
#RUN ls -alrt
RUN cp -R node_modules prod_node_modules     
RUN cp -R index.js prod_index.js
RUN cp -R server prod_server
RUN cp -R config.js prod_config.js
#
# ----- TEST ------------
FROM dependencies AS test
USER app
RUN node -v && npm -v
#RUN  npm run lint && npm run setup && npm run test
#
# ----- RELEASE -----------
FROM basebackend AS release 
USER app
# Bundle app source
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_index.js index.js
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_server server
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_config.js config.js
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_node_modules ./node_modules

EXPOSE 8000
CMD npm start
#ENV FRONT_URL=http://localhost:5000
#ENV FRONT_URL=http://frontend:5000
#VOLUME /logs

