FROM debian:stable-slim
RUN \
    apt-get update -y \
    && apt-get install -y chromium \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 9222
ENTRYPOINT [ "chromium", "--headless", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=9222", "–-disable-gpu", "–-disable-dev-shm-usage", "–-disable-setuid-sandbox", "-–no-first-run", "–-no-sandbox", "–-no-zygote" ,"-–single-process"]
