# OpenTelemetry Collector (Datadog Example)

This project provides a simple setup for running the OpenTelemetry Collector with Datadog as the exporter.

## Prerequisites
- You must have a Datadog API key.
- The `DD_API_KEY` environment variable must be set before starting the collector.
- The `otelcol-contrib` binary must be installed and available in your PATH.

## Quick Start

1. Set your Datadog API key in your environment:
   ```sh
   export DD_API_KEY=your_datadog_api_key_here
   ```

2. Start the collector with the provided configuration:
   ```sh
   otelcol-contrib --config ./collector/otel-collector-config.yaml
   ```

## Configuration
- The collector configuration is located at `collector/otel-collector-config.yaml`.
- The config is set up to receive OTLP data and export traces, metrics, and logs to Datadog.