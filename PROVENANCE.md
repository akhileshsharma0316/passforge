# Provenance

PassForge is an independent implementation of FIDO2/WebAuthn identity-server
capabilities, built from publicly available standards.

## The rule

Write code from the specification. Don't copy code from other FIDO2/WebAuthn
libraries.

**OK to read:** W3C and FIDO specifications, RFCs, IANA registries, official test
vectors, academic papers.

**Not OK:** copying or closely paraphrasing source code from other implementations
(e.g. python-fido2, py_webauthn, SimpleWebAuthn, java-webauthn-server).

## In practice

- Sign off your commits: `git commit -s`
- If code follows a spec rule that isn't obvious, add a comment with the section,
  e.g. `# WebAuthn L3 §2.4: reject non-canonical CBOR`
- Comparing PassForge's behavior against another library (same input, compare output)
  is fine. Reading that library's code to understand *why* is not.

That's it. This file will grow if new questions come up.