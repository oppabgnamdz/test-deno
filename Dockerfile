FROM denoland/deno
EXPOSE 8000
WORKDIR /app
COPY . .

RUN deno cache app.ts


CMD ["run", "--allow-net",'--allow-read', "app.ts"]
