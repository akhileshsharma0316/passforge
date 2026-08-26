# PassForge

An independent Python implementation of FIDO2/WebAuthn Relying Party capabilities,
derived solely from publicly available standards.

---

> ## ⚠️ NOT PRODUCTION READY
>
> PassForge is pre-alpha. Do not use it to authenticate real users.

---

## What this is

PassForge is a clean-room implementation of the server-side (Relying Party) half of
FIDO2/WebAuthn, written in Python. Code is derived from specification text only — see
[PROVENANCE.md](PROVENANCE.md).

## Current phase: Phase 0 — Foundation

Building the primitive decoding layer that everything else sits on:

- [ ] Strict CTAP2 canonical CBOR decoder
- [ ] COSE key parsing (EC2 / RSA / OKP)
- [ ] Strict unpadded base64url
- [ ] `clientDataJSON` handling
- [ ] All WebAuthn L3 §16 test vectors passing

Nothing above this layer exists yet. This section will be replaced with the next
phase's scope once Phase 0's exit criteria are met.

## Standards targeted

Pinned versions and exact links: [docs/standards/REFERENCES.md](docs/standards/REFERENCES.md)

- W3C WebAuthn Level 3
- FIDO CTAP 2.3

## Requirements

Python 3.11+

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and, before your first PR,
[PROVENANCE.md](PROVENANCE.md).

## Security

See [SECURITY.md](SECURITY.md).

## License

Apache License 2.0. See [LICENSE](LICENSE).