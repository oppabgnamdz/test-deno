FROM hayd/deno:1.12.1

WORKDIR /app
COPY . .

RUN deno cache app.ts

EXPOSE 8000

CMD ["deno", "run", "--allow-net", "main.ts"]
