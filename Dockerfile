FROM tomcat:9.0-jdk17

# Xóa ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR build sẵn từ NetBeans
COPY dist/ch13_ex1_email.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
