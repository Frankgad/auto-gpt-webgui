FROM node:20-alpine
USER root
# Set environment variables
ENV PIP_NO_CACHE_DIR=yes \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1
RUN apk add --no-cache git py3-pip make bash automake gcc g++ curl python3-dev jq chromium-chromedriver firefox-esr ca-certificates \
    && pip install --upgrade pip \
    && pip install --upgrade setuptools
COPY . /auto-gpt-webgui
WORKDIR /auto-gpt-webgui
RUN npm install && npm run setup-auto-gpt
EXPOSE 7070
EXPOSE 2200
CMD ["npm", "start"]