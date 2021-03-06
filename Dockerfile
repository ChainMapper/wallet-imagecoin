FROM packages.netwatwezoeken.nl/chainmapper/wallet-base-bionic

ENV WALLET_URL=https://github.com/mceme/ImageCoin/releases/download/1.0.40/ImageCoin_linux_x86_64_70222.tar.xz
RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar.gz \
	&& mkdir -p /data/.imagecoincore

#rpc port & main port & zmqport
EXPOSE 6666 6998 5555

ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
COPY wallet.sh /wallet.sh
RUN chmod 777 /*.sh
CMD /start.sh imagecoin.conf IMG ImageCoind