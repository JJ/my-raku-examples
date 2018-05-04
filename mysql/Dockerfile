FROM rakudo-star
ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm-256color
WORKDIR /srv
RUN apt-get update -q && \
    apt-get install --no-install-recommends -qy \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    default-libmysqlclient-dev \
    git \
    gnupg2 \
    libssl-dev \
    unzip \
    vim-nox \
    wget \
    zip && \
    apt-get clean && \
    zef install Bailador URI DBIish && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"] 
