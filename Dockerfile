FROM chainmapper/walletbase-bionic

ENV WALLET_URL=https://github.com/mceme/ImageCoin/releases/download/1.0.7.1/imagecoin-linux-x86_64_70210.tar.xz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar.gz \
	&& mkdir -p /data/.imagecoincore

#rpc port & main port
EXPOSE 6666 6998

ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh imagecoin.conf IMG ImageCoind