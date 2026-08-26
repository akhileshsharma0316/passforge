# Normative References — Phase 0

Pinned versions of specs used in the current phase. ADRs and code comments cite these
by the short key in brackets. Later phases will add their own references here as they
start — this file grows with the project, it isn't rewritten each time.

**Last reviewed:** 2026-08-25

## `[WebAuthn-3]` — W3C Web Authentication Level 3

- Status: W3C Recommendation, 25 August 2026
- Pinned: https://www.w3.org/TR/2026/REC-webauthn-3-20260825/
- Latest: https://www.w3.org/TR/webauthn-3/
- Issues: https://github.com/w3c/webauthn/issues

Sections relevant to Phase 0:

| Section | Subject |
| --- | --- |
| §2.4 | CTAP2 canonical CBOR required |
| §5.8.1 | `CollectedClientData`, serialization, limited verification algorithm |
| §16 | Test vectors — the Phase 0 exit criterion |

## `[CTAP-2.3]` — FIDO Client to Authenticator Protocol 2.3

- Status: FIDO Alliance Proposed Standard, 26 February 2026
- Index: https://fidoalliance.org/specifications/

Defines the CTAP2 canonical CBOR encoding form that `[WebAuthn-3]` §2.4 requires.

## Encoding and crypto RFCs used in Phase 0

| Key | Reference | Use |
| --- | --- | --- |
| `[RFC8949]` | CBOR | Base encoding; PassForge implements the canonical subset only |
| `[RFC9052]` / `[RFC9053]` | COSE | `COSE_Key` parsing, algorithm identifiers |
| `[RFC4648]` §5 | base64url | Strict, unpadded |

## Algorithms in scope for Phase 0

Driven by the `[WebAuthn-3]` §16 test vectors:

| COSE `alg` | Name | Key type |
| --- | --- | --- |
| -7 | ES256 | EC2, P-256 |
| -35 | ES384 | EC2, P-384 |
| -36 | ES512 | EC2, P-521 |
| -257 | RS256 | RSA |
| -8 | EdDSA | OKP, Ed25519 and Ed448 |

Ed448 is easy to skip — it's in the vectors, don't skip it.

## IANA registries (check before adding anything new)

- COSE Algorithms: https://www.iana.org/assignments/cose/
- WebAuthn Attestation Statement Format Identifiers: https://www.iana.org/assignments/webauthn/

---

*Next additions: MDS and attestation references (Phase 2), federation specs (Phase 3).*