# PassForge

An independent Python implementation of FIDO2/WebAuthn identity-server capabilities,
based on publicly available standards.

> ⚠️ **Pre-alpha. Not for production use.**

## What this is

PassForge implements the server side of FIDO2/WebAuthn: registering credentials and
verifying authentication assertions, following the W3C and FIDO specifications
directly. See [PROVENANCE.md](PROVENANCE.md) for how code is written.

## Current phase: Phase 0 — Foundation

- [ ] CBOR decoder (CTAP2 canonical form)
- [ ] COSE key parsing
- [ ] base64url encode/decode
- [ ] clientDataJSON handling
- [ ] WebAuthn L3 §16 test vectors passing

More capability gets added and documented here as later phases start.

## Standards

Pinned versions: [docs/standards/REFERENCES.md](docs/standards/REFERENCES.md)

## Requirements

Python 3.11+

## Contributing

See [PROVENANCE.md](PROVENANCE.md) before your first PR.

## Security

See [SECURITY.md](SECURITY.md).

## License

Apache License 2.0. See [LICENSE](LICENSE).