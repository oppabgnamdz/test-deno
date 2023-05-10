FROM denoland/deno
EXPOSE 8000
WORKDIR /app
COPY . ./app

RUN deno cache app.ts


CMD ["run", "--allow-net", "app.ts"]
