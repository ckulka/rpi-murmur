This repository provides an image for mumble-server / murmur (http://mumble.info/) on Raspberry Pi.
Automated builds currently fail since Docker Hub currently doesn't support ARM platforms.

For more details, see https://github.com/ckulka/rpi-mumble-server


### Run

The following command will start the mumble server:
```
docker run --rm -it -p 64738:64738 ckulka/rpi-mumble-server
```

### Environment Variables

To disable updating mumble-server, the environment variable ```MUMBLE_NO_UPDATE``` needs exist:
```
docker run --rm -it -p 64738:64738 -e MUMBLE_NO_UPDATE= ckulka/rpi-mumble-server
```

To set the SuperUser password, specify it in the ```MUMBLE_SUPW``` environment variable:
```
docker run --rm -it -p 64738:64738 -e MUMBLE_SUPW=my-secret ckulka/rpi-mumble-server
```