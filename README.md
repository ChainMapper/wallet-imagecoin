# docker-imagecoin
Wallet and daemon for ImageCoin [IMG] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/imagecoin` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/imagecoin.conf" chainmapper/imagecoin` to use your own config.

```
Docker IMG wallet

By: ChainMapper
Website: https://chainmapper.com

Starting IMG daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/imagecoin.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file