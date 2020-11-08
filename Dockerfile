FROM rustembedded/cross:armv7-unknown-linux-gnueabihf-0.2.1 
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get install --assume-yes gtk2.0 \
                                 gtk3.0 \
                                 libgtk-3-dev
