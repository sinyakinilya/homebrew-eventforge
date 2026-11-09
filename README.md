# EventForge Homebrew tap

This tap distributes the EventForge CLI preview for macOS arm64.
The binary forwards saved webhooks to a development handler on localhost.

Project site — [EventForge](https://event-forge.app).

## Install on Apple Silicon

```sh
brew install sinyakinilya/eventforge/eventforge
eventforge --version
eventforge listen --help
```

The formula downloads the [client archive](https://github.com/sinyakinilya/homebrew-eventforge/releases/tag/v0.30.3)
and verifies its SHA-256.
