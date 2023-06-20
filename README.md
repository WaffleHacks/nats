# WaffleHacks NATS

A custom Docker image for [NATS][] to support automatic clustering on [Fly.io][].

When we detect that the image is running on [Fly.io][], we automatically configure clustering to use Fly's internal DNS.
Each server advertises using it's allocation ID to ensure that the cluster is stable across restarts. Routes are
determined by looking up the top 3 closest servers, exlcuding the current server.

[NATS JetStream][] can be enabled by setting the `NATS_JETSTREAM` environment variable to any value other than `0`.

[NATS]: https://nats.io
[Fly.io]: https://fly.io
[NATS JetStream]: https://docs.nats.io/nats-concepts/jetstream
