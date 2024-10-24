FROM openjdk:17-jdk-alpine

# Buat user dan group untuk menjalankan aplikasi
RUN addgroup -S spring && adduser -S spring -G spring

# Gunakan user spring untuk menjalankan aplikasi
USER spring:spring

# Tentukan argumen untuk file .jar
ARG JAR_FILE=target/*.jar

# Salin file .jar ke image dan rename jadi app.jar
COPY ${JAR_FILE} app.jar

# Buka port 8080 untuk aplikasi
EXPOSE 8080

# Jalankan aplikasi dengan perintah java -jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
