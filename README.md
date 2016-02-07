# Tomcat image

Tomcat following official Docker image with some local defaults and security improvements:

* starting with non-root user - tomcat
* server fingerprint overriden

Environment options:

| Environment variable | Description
| -------------------- | --------------
| MINMEM               | Minimal size of the heap
| MAXMEM               | Maximal size of the heap
| XSS                  | Size of the stack
| JMX                  | When set to "true", JMX monitoring will be enabled on host JMX_HOSTNAME and port JMX_PORT, defaults to localhost and port 9004
| JMX_PASS_FILE        | If set, it protects JMX access with specified file. Don't forget it should be only readable to the user, noone else
| DEBUG_TOMCAT         | If set to "true", Catalina's debug socket on port 8000 without suspend is turned on.
| DEBUG_SUSPEND        | If set to "y", Catalina will stop until you connect to debug port

# Run

```
docker run --rm -ti seges/tomcat:8.0.30-oracle-jre8
```
