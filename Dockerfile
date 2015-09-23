FROM java:8-jre
MAINTAINER doron Chen <doron@JaaSun.com>

ENV YOUTRACK_VERSION 6.5.16713

RUN wget http://download-cf.jetbrains.com/charisma/youtrack-$YOUTRACK_VERSION.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-XX:MaxMetaspaceSize=250m", "-Djavax.net.ssl.trustStore=/etc/ssl/certs/java/cacerts", "-Djavax.net.ssl.trustStorePassword=changeit", "-Djava.awt.headless=true", "-Djetbrains.youtrack.disableBrowser=true", "-Djetbrains.youtrack.disableCheckForUpdate=true", "-jar", "youtrack.jar", "80"]