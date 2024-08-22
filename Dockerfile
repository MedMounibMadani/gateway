FROM bellsoft/liberica-runtime-container:jre-17-stream-musl
WORKDIR .
EXPOSE 8070
COPY target/*-SNAPSHOT.jar app.jar
CMD ["sh", "-c", "sleep 150 && java -jar /app.jar"]
