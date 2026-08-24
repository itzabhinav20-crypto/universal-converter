# Security hardening applied

This build adds local archive extraction checks intended to prevent path traversal
(Zip Slip) and rejects absolute paths and archive symlink/hardlink entries.

It also removes `shell=True` from subprocess invocations where present.

This is intended for local use. Do not expose the converter directly to the public
internet without additional sandboxing, authentication, upload size limits, rate
limits, and OS-level isolation.

The hardening does not constitute a full security audit.
