FROM openjdk:8-jdk-slim

RUN apt update

# Install tesseract library
RUN apt-get update && apt-get install -y --no-install-recommends tesseract-ocr

# Check the installation status
RUN tesseract --list-langs
RUN tesseract -v

# Set the name of the jar
ENV APP_FILE schweiz-migros-beleg-ocr-scanner-0.0.1-SNAPSHOT.jar

# Copy our JAR
COPY target/$APP_FILE /app.jar

# Copy dependencies
COPY target/lib /app/lib

# Copy resources
COPY src/main/resources /app/resources

# Set the entry point with TESSDATA_PREFIX
ENTRYPOINT ["java", "-cp", "/app.jar:/app/lib/*", "-DTESSDATA_PREFIX=/app/resources/tessdata", "bt.mbc.App"]
