FROM websphere-liberty:javaee7
LABEL description="daytrader7"
COPY daytrader-ee7.ear /opt/ibm/wlp/usr/servers/defaultServer/apps/daytrader-ee7.ear
COPY server.xml /opt/ibm/wlp/usr/servers/defaultServer/server.xml
COPY derby-10.10.1.1.jar /opt/ibm/wlp/usr/servers/defaultServer/derby-10.10.1.1.jar
USER root
RUN chown default:root /opt/ibm/wlp/usr/servers/defaultServer/apps/daytrader-ee7.ear /opt/ibm/wlp/usr/servers/defaultServer/server.xml /opt/ibm/wlp/usr/servers/defaultServer/derby-10.10.1.1.jar
USER default
