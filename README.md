# Connect to Cisco VPN Any Connect

To run container, invoke:

```bash
docker run --name=<docker_name> --cap-add=ALL -e ANYCONNECT_SERVER=<server> -e ANYCONNECT_USER=<user> -e ANYCONNECT_PASSWORD=<password> --privileged -d -ti iwanttobefreak/anyconnect-vpn
```
