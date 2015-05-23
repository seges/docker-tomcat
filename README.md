# Tomcat image

Tomcat following official Docker image with some local defaults and security improvements:

* starting with non-root user - tomcat, uid = 1001
* server fingerprint overriden

# Run

```
docker run --rm -ti seges/tomcat:7-jre7
```
