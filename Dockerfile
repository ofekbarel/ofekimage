FROM tomcat
WORKDIR webapps
COPY target/ofek.war .
RUN del /f /q ROOT /s && move ofek.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]