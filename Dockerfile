# This stage exports the sapper application.
FROM mhart/alpine-node:12 AS export-app
WORKDIR /app
COPY . .
RUN npm install --no-audit --unsafe-perm
RUN npm run export

# This stage runs Deno and serves the static site
FROM hayd/alpine-deno:1.0.0
COPY --from=export-app /app/__sapper__/export .
CMD ["run", "--allow-read", "--allow-net", "https://deno.land/std/http/file_server.ts"]