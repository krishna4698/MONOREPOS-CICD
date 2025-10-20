FROM oven/bun:latest

WORKDIR /usr/src/app
COPY  ./bun.lock  ./bun.lock
COPY  ./package.json   ./package.json
COPY  ./tsconfig.json   ./tsconfig.json
COPY   ./packages     ./packages

COPY  ./apps/websocket   ./apps/websocket

RUN bun install
RUN  bun run db:migrate



EXPOSE  8081
 CMD [ "bun" ,"run", "start:websocket" ]