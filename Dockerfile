FROM dockerfile/java:oracle-java7
MAINTAINER Doron Chen <doron@JaaSun.com>

RUN wget http://download-cf.jetbrains.com/charisma/youtrack-6.5.16713.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-XX:MaxPermSize=250m", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
