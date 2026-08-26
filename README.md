# PassForge

An independent Python implementation of a FIDO2/WebAuthn server, built from the W3C
WebAuthn and FIDO CTAP specifications. Includes a FastAPI demo app.

> ⚠️ Pre-alpha. Not for production use.

## What this is

A library that implements WebAuthn registration and authentication (server-side /
Relying Party only), plus a small FastAPI app demonstrating register/login flows.

## Plan (4 months)

- **Month 1** — CBOR, COSE, base64url, clientDataJSON parsing
- **Month 2** — Registration: options + verification (`none`, `packed` attestation)
- **Month 3** — Authentication: options + verification, signature counter check
- **Month 4** — Fuzzing, FastAPI demo app, docs, v0.1.0 on PyPI

## Stack

- Python 3.11+
- FastAPI (demo app + reference integration)
- `cryptography` (signatures)
- No other runtime dependencies in the core library

## Quick example (target API, not yet built)

```python
from fastapi import FastAPI
from passforge import PassForge

app = FastAPI()
pf = PassForge(rp_id="example.com", rp_name="Example")

@app.post("/register/options")
def register_options(user_id: str):
    return pf.generate_registration_options(user_id)

@app.post("/register/verify")
def register_verify(response: dict):
    return pf.verify_registration_response(response)
```

## Standards

See [docs/REFERENCES.md](docs/REFERENCES.md).

## Contributing

See [PROVENANCE.md](PROVENANCE.md).

## Security

See [SECURITY.md](SECURITY.md).

## License

Apache License 2.0.