FROM hayd/deno:latest

WORKDIR /app
COPY . .

RUN deno cache app.ts

EXPOSE 8000

CMD ["deno", "run", "--allow-net", "app.ts"]
