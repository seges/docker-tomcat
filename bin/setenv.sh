CATALINA_OPTS="-server -d64 -XX:+AggressiveOpts -Djava.awt.headless=true -XX:MaxGCPauseMillis=500 -Xmx${MAXMEM} -Xms${MINMEM} -Xss${XSS}"

CATALINA_OPTS="$CATALINA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$CATALINA_BASE/monitor"

if $JMX ; then
  CATALINA_OPTS="${CATALINA_OPTS} -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.ssl=false  -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.port=${JMX_PORT} -Djava.rmi.server.hostname=${JMX_HOSTNAME} -Dcom.sun.management.jmxremote.rmi.port=${JMX_PORT}"
fi

if $JMX_PASS_FILE ; then
  CATALINA_OPTS="${CATALINA_OPTS} -Dcom.sun.management.jmxremote.password.file=$JMX_PASS_FILE"
fi

if $DEBUG_TOMCAT ; then
  CATALINA_OPTS="${CATALINA_OPTS} -Xdebug -Xrunjdwp:transport=dt_socket,address=${DEBUG_PORT},server=y,suspend=${DEBUG_SUSPEND}"
fi

