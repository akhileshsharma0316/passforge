# Provenance Policy

PassForge is an independent implementation. This only means something if it's
demonstrable — so the rule is simple and applies from commit one.

## The rule

**Code is derived from specification text only — never from another implementation's
source.**

You may read: W3C specs, FIDO specs, IETF RFCs, IANA registries, academic papers, and
official test vectors.

You may not read the source of any other FIDO2/WebAuthn/CTAP implementation
(e.g. `python-fido2`, `py_webauthn`, `SimpleWebAuthn`, `java-webauthn-server`,
`webauthn4j`, `fido2-net-lib`, `webauthn-rs`, `go-webauthn`) while working on PassForge.

If you've read one of these in the past, that's fine — just say so in your first PR, and
avoid the module you know best.

## What this means in practice, right now

Phase 0 is decoders only (CBOR, COSE, base64url, clientDataJSON). For this code:

1. Sign off commits: `git commit -s`
2. Tick the provenance checkbox in the PR template
3. Cite the spec section for anything non-obvious, e.g.:
   `# WebAuthn L3 §2.4: reject non-canonical CBOR`

## Differential testing

Comparing PassForge's output against another library is fine and encouraged — but
black-box only. Run bytes through both, compare results. Never open the other library's
code to see *why* it produced a result.

## Why

Legal: avoids inheriting another project's licence obligations by accident.
Scientific: an "original contribution" claim needs a documented process behind it.

This file will grow as later phases add attestation, MDS, and federation code.