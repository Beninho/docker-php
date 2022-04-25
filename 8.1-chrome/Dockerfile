FROM beninho/php:8.1

RUN apt-get update && apt-get install -y zlib1g-dev wget

# INSTALL Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
RUN dpkg -i /tmp/chrome.deb || apt-get install -yf
RUN rm /tmp/chrome.deb

# Config PANTHER
ENV PANTHER_NO_SANDBOX 1
ENV PANTHER_CHROME_ARGUMENTS='--disable-dev-shm-usage'
ENV PANTHER_WEB_SERVER_PORT 9800
ENV WORKPATH ${WORKFOLDER}