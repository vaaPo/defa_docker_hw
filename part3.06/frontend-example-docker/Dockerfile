# Filename: Dockerfile
#
# --- BASE NODE ---
FROM alpine:latest  AS base
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
RUN apk add --update --no-cache shadow npm;
RUN useradd -m app
RUN groupadd dockerapp 
RUN usermod -G dockerapp app
RUN apk del shadow;
WORKDIR /usr/src/app
RUN chown -R app:dockerapp /usr/src/app && \
    chmod -R ug+rxw /usr/src/app

COPY --chown=app:dockerapp ./package*json ./

RUN npm install -g serve
RUN ls -al
#
# --------- DEPENDENCIES ----------
FROM base AS dependencies
USER app

# If you are building your code for production
RUN npm ci --only=production
COPY --chown=app:dockerapp . .
RUN ls -al
RUN npm run build
RUN ls -al
RUN cp -R node_modules prod_node_modules
RUN cp -R dist prod_dist
# dev stuff
#RUN npm install 
#
# ----- TEST ------------
FROM dependencies AS test
USER app
RUN node -v && npm -v
#RUN  npm run lint && npm run setup && npm run test
#
# ----- RELEASE -----------
FROM base AS release 
#COPY --from=dependencies /usr/src/app ./dist 
# Bundle app source
USER app
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_dist ./dist
COPY --from=dependencies --chown=app:dockerapp /usr/src/app/prod_node_modules ./node_modules
EXPOSE 5000
CMD serve -s -l 5000 dist
#ENV API_URL=http://localhost:8000
#CMD npm start
