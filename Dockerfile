FROM ubuntu:22.04

RUN apt-get update && apt-get install -y minetest-server \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 30000/tcp

CMD ["minetestserver", "--worldname", "world"]
