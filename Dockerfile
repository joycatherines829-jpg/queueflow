FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY QueueFlow.java .
RUN javac -d out QueueFlow.java
ENV PIN_FILE=/app/data/queueflow-pins.txt
RUN mkdir -p /app/data
CMD ["java", "-cp", "out", "QueueFlow"]
