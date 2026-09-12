
Each row is one requirement, scoped initially to the areas listed under
MVP Scope in [README.md](../../README.md). Requirement text is paraphrased,
never quoted from the specification — see the spec reference column for the
exact section to check. Rows marked "N/A (implementation)" cover behavior
this project must define itself because the cited specifications are silent
on it (e.g. session handling after a successful ceremony).

## ID scheme

- `CBOR-###` — CBOR encoding/decoding
- `COSE-###` — COSE key/signature handling
- `REG-###` — Registration ceremony
- `AUTH-###` — Authentication ceremony
- `DISC-###` — Credential discovery
- `CRED-###` — Credential lifecycle management
- `CHAL-###` — Challenge management
- `ID-###` — Identity management
- `ATT-###` — Attestation verification
- `RP-###` — Relying Party validation
- `SESS-###` — Session management
- `API-###` — REST API / transport
- `SEC-###` — Sensitive data at rest/in transit

## Status values

`Not started` / `In progress` / `Implemented` (tests pass) /
`Verified` (tests pass and re-checked against the cited spec text).

## CBOR and COSE

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| CBOR-001 | WebAuthn L3 §2.4; RFC 8949 | All CBOR encoding/decoding MUST use the CTAP2 canonical CBOR form; decoders SHOULD reject non-canonical encoding and duplicate map keys | | | | Not started |
| COSE-001 | RFC 9052 / RFC 9053; WebAuthn L3 §5.8.5 | Parse and validate COSE key structures and `COSEAlgorithmIdentifier` values | | | | Not started |
| COSE-002 | WebAuthn L3 §5.8.5; `docs/standards/REFERENCES.md` | Restrict accepted signature algorithms to the MVP allow-list (ES256, EdDSA required; RS256/ES384/ES512 if time allows) | | | | Not started |

## Registration

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| REG-001 | WebAuthn L3 §7.1 | Server-side steps for registering a new credential from a `create()` response (verify client data, hash, RP ID, flags, extensions) | | | | Not started |
| REG-002 | WebAuthn L3 §5.1.3, RP ID steps | Validate `rp.id` is equal to or a registrable domain suffix of the effective domain | | | | Not started |
| REG-003 | WebAuthn L3 §4 (Credential Record); §7.1 | Construct and persist a credential record (type, id, publicKey, signCount, transports, backup flags) | | | | Not started |

## Authentication

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| AUTH-001 | WebAuthn L3 §7.2 | Server-side steps for verifying an authentication assertion (client data, RP ID hash, flags, signature) | | | | Not started |
| AUTH-002 | WebAuthn L3 §6.1.1 | Signature counter validation to detect cloned authenticators | | | | Not started |

## Credentials Discovery

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| DISC-001 | WebAuthn L3 §4 (Client-side discoverable Public Key Credential Source) | Support discoverable-credential authentication (empty `allowCredentials`) | | | | Not started |

## Credentials Lifecycle Management

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| CRED-001 | WebAuthn L3 §4 (Credential Record) | Update credential record fields (signCount, backupState) after each ceremony | | | | Not started |
| CRED-002 | N/A (implementation) | Credential revocation/deletion workflow (not specified by WebAuthn; RP-defined) | | | | Not started |

## Challenge Management

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| CHAL-001 | WebAuthn L3 §13.4.3 | Generate cryptographically random, single-use challenges of sufficient length | | | | Not started |
| CHAL-002 | WebAuthn L3 §5.1.3 / §5.1.4 (`collectedClientData.challenge`) | Verify the challenge in `clientDataJSON` matches the one issued and hasn't been reused | | | | Not started |

## Identity Management

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| ID-001 | WebAuthn L3 §5.4.3 (`PublicKeyCredentialUserEntity`) | Map `user.id` (user handle) to an internal identity record at registration | | | | Not started |
| ID-002 | WebAuthn L3 §14.6.1 | User handle MUST NOT contain personally identifying information | | | | Not started |
| ID-003 | WebAuthn L3 §14.6.2 | Avoid username enumeration in identity-related endpoints | | | | Not started |

## Cryptography Validation & Verification — Attestation and Assertion

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| ATT-001 | WebAuthn L3 §6.5 | Parse and validate the attestation object structure | | | | Not started |
| ATT-002 | WebAuthn L3 §8.7 | Support "none" attestation statement format (MVP baseline) | | | | Not started |
| ATT-003 | WebAuthn L3 §8.2 | Support "packed" attestation statement format | | | | Not started |
| ATT-004 | WebAuthn L3 §7.2, signature steps | Verify assertion signature against the stored credential public key | | | | Not started |

## RP Validation

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| RP-001 | WebAuthn L3 §4 (Relying Party Identifier / RP ID) | Enforce RP ID scoping rules for both registration and authentication | | | | Not started |
| RP-002 | WebAuthn L3 §5.1.3 / §5.1.4 (origin checks) | Validate `origin` in `clientDataJSON` against expected RP origin(s) | | | | Not started |

## Session Management

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| SESS-001 | N/A (implementation) | Post-authentication session issuance/expiry — WebAuthn ends at assertion verification; session handling is RP-defined | | | | Not started |

## REST APIs

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| API-001 | WebAuthn L3 §5 (intro: HTTPS requirement) | All ceremony endpoints served over HTTPS/TLS | | | | Not started |
| API-002 | N/A (implementation) | REST endpoint design for registration/authentication ceremony options and responses | | | | Not started |

## Sensitive Data Management (at rest / in transit)

| ID | Spec Ref | Requirement | Design Decision | Implementation | Test(s) | Status |
|---|---|---|---|---|---|---|
| SEC-001 | N/A (implementation) | Encrypt sensitive fields (credential public keys, user handles) at rest | | | | Not started |
| SEC-002 | N/A (implementation) | Enforce TLS for all data in transit | | | | Not started |

---

If a section grows past ~30–40 rows, split it into its own file under
`docs/standards/traceability/` (e.g. `registration.md`) and leave this file
as an index linking to each.