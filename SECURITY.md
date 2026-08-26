# Security Policy

## Pre-1.0 status

PassForge is pre-alpha. It is unaudited and has no security guarantees. Do not use it
to authenticate real users.

Report problems anyway — finding them early is the point.

## Reporting a vulnerability

**Don't open a public issue.** Use GitHub's private reporting instead:

**[Report a vulnerability](../../security/advisories/new)**

*(Requires enabling Settings → Security → Private vulnerability reporting on this
repo.)*

Include: affected commit/version, what's wrong, and how to reproduce it.

## Response targets

- Acknowledged within 3 working days
- Fixed and disclosed within 90 days, or sooner for active exploitation

## Scope

**In scope:** parsing/decoding bugs (CBOR, COSE, base64url), signature verification
bypasses, algorithm confusion, origin/challenge validation flaws — anything that could
make PassForge accept something it shouldn't.

**Out of scope:** bugs in dependencies (report upstream), missing features, automated
scanner output with no real impact.

This list grows as new capability (attestation, MDS trust, etc.) gets built.

## Spec ambiguities

Found something the standard itself doesn't make clear? That's not a vulnerability —
just open a normal public issue.