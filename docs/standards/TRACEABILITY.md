# Traceability

This document maps every implemented protocol requirement through the chain
defined in [`PROVENANCE.md`](../governance/PROVENANCE.md):


Each row is one requirement. Requirement text is paraphrased, never quoted
from the specification — see the spec reference column for the exact
section to check.

## ID scheme

Prefix by functional area so rows sort and search sensibly:

- `REG-###` — Registration ceremony
- `AUTH-###` — Authentication ceremony
- `COSE-###` — COSE key/signature handling
- `CBOR-###` — CBOR encoding/decoding
- `ATT-###` — Attestation verification
- `SESS-###` — Session management

## Status values

- `Not started` — requirement identified, no code yet
- `In progress` — implementation underway
- `Implemented` — code exists, tests pass
- `Verified` — tests pass *and* the implementation has been re-checked
  against the cited spec section (not just against the tests)

## Registration

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| REG-001 | | | | | | Not started |

## Authentication

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| AUTH-001 | | | | | | Not started |

## COSE / CBOR

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| COSE-001 | | | | | | Not started |

## Attestation

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| ATT-001 | | | | | | Not started |

## Session Management

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| SESS-001 | | | | | | Not started |

---

If a section grows past ~30–40 rows, split it into its own file under
`docs/standards/traceability/` (e.g. `registration.md`) and leave this file
as an index linking to each.