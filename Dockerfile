
FROM openjdk:11
WORKDIR /app
COPY LoginWebApp.war /app/LoginWebApp.war
EXPOSE 8080
CMD ["java", "-jar", "LoginWebApp.war"]


