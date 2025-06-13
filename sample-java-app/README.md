# Sample Java App with OpenTelemetry

This is a simple Java application that sends traces and logs to an OpenTelemetry Collector using OTLP/gRPC.

## Prerequisites
- Java 17+
- Maven
- OpenTelemetry Collector running and listening on `localhost:4317` (default OTLP/gRPC endpoint)

## Build

```
mvn clean package
```

## Run

```
java -javaagent:opentelemetry-javaagent.jar \
  -Dotel.service.name=sample-java-app \
  -Dotel.exporter.otlp.endpoint=http://localhost:4317 \
  -jar target/sample-java-app-1.0-SNAPSHOT.jar 
```

## What it does
- Sends a trace (span) named `sample-span` with a custom attribute.
- Logs a message using SLF4J.

## Verify
- Check your OpenTelemetry Collector logs or backend (e.g., Datadog, Jaeger, etc.) for the `sample-java-app` service and the `sample-span` trace.
- You should also see the log message: `Hello from SampleApp! This is a log message.` 