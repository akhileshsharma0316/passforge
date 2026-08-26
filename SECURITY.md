# Security Policy

## Pre-1.0 status

PassForge is pre-alpha software. It is unaudited and has not been certified against any
conformance suite. **There are no security guarantees at this stage, and PassForge must
not be used to authenticate real users.**

This policy nonetheless applies in full. Finding problems early is the point of
publishing the work.

## Reporting a vulnerability

**Do not open a public issue for a security vulnerability.**

Use GitHub's private vulnerability reporting:

**[Report a vulnerability](../../security/advisories/new)**

This opens a private draft security advisory visible only to maintainers. It lets you
attach files, discuss the issue privately, and track the fix through to a coordinated
public advisory — without exposing the report while it is unresolved.

If this feature is not enabled yet on the repository, enable it under
**Settings → Security → Private vulnerability reporting** before publishing this file.

If GitHub's reporting feature is ever unavailable, or for anything you don't want on
GitHub at all, contact the maintainer directly via the email on their GitHub profile.
This channel will be replaced with a dedicated security mailing list and PGP key once
the project has infrastructure of its own.

### What to include

- Affected version or commit hash
- A description of the issue and why it is a security problem
- Reproduction steps, ideally a minimal failing input
- Any suggested remediation

Proof-of-concept input files are welcome. Please do not include real user credentials.

## Coordinated disclosure

| Stage | Target |
| --- | --- |
| Acknowledgement of report | 3 working days |
| Initial assessment and severity triage | 10 working days |
| Fix, advisory, and public disclosure | 90 days from report |

If a fix will take longer than 90 days, the maintainers will say so and agree an
extended timeline with the reporter. If a vulnerability is being actively exploited,
disclosure may be accelerated.

Reporters are credited in the published advisory unless they ask not to be.

## Scope

**In scope** — anything in this repository that affects the correctness or security of
authentication decisions, including:

- Parsing and decoding flaws (CBOR, COSE, base64url, JSON, X.509)
- Signature verification bypasses and algorithm confusion
- Origin, RP ID, or challenge validation flaws
- Replay, downgrade, or authenticator-substitution issues
- Attestation or metadata trust-chain flaws
- Denial of service reachable from untrusted input
- Timing side channels in comparisons of secret or security-relevant values

**Out of scope**

- Vulnerabilities in dependencies — report those upstream, then tell us so we can pin
  or patch
- Issues requiring a compromised host or a malicious maintainer
- Missing hardening that is documented as a known limitation
- Findings from automated scanners without a demonstrated impact

## Specification ambiguities

If you find that the specification itself is unclear or under-specified, that is not a
vulnerability report — it is a research finding, and it is very welcome. Open a public
issue using the `spec-ambiguity` template. Such findings are tracked and, where
warranted, filed with the W3C Web Authentication Working Group or the FIDO Alliance.

## Safe harbour

Good-faith research conducted under this policy will not be pursued or reported by the
maintainers. Please do not access data you do not own, degrade any service, or disclose
publicly before the agreed date.