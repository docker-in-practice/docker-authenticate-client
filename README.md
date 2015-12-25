# docker-authenticate

The client side of basic HTTP authentication on your docker daemon (to be
used with https://github.com/docker-in-practice/docker-authenticate).

Run with:

```
docker run -d -p 127.0.0.1:12375:12375 dockerinpractice/docker-authenticate-client \
    targetip:2375 username:password
```
(note that targetip must *not* be localhost/127.0.0.1 - use the external IP of your host
if you want to just try it out)

You can then use docker with
```
docker -H localhost:12375 ps
```
