#!/bin/sh

java -javaagent:opentelemetry-javaagent.jar \
  -Dotel.service.name=sample-java-app \
  -Dotel.exporter.otlp.endpoint=http://localhost:4317 \
  -jar target/sample-java-app-1.0-SNAPSHOT.jar 