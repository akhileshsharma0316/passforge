# Provenance

PassForge is an independent implementation of WebAuthn/FIDO2 identity-server
capabilities, built from publicly available standards.

The objective is to implement protocol behavior from normative specifications
rather than reproduce an existing implementation.

## Primary Rule

**Write code from the specification. Do not copy implementation code from
other FIDO2/WebAuthn projects.**

The normative specifications are the primary source of truth for protocol
behavior.

## Primary Sources

The following sources may be used as technical references:

- W3C WebAuthn specifications
- FIDO specifications
- IETF RFCs
- IANA registries
- Official test vectors
- Public standards documentation
- Academic and technical publications

These sources may be used to understand protocol requirements, terminology,
data structures, algorithms, and expected behavior.

## Existing Implementations

Existing WebAuthn/FIDO2 implementations may be used as secondary references
for:

- Behavioral comparison
- Black-box interoperability testing
- Comparing inputs and outputs
- Identifying interoperability differences
- Validating assumptions about protocol behavior

Examples include:

- `python-fido2`
- `py_webauthn`
- `SimpleWebAuthn`
- `java-webauthn-server`

Existing implementations must not replace the normative specification as the
source of truth.

## Prohibited Practices

The following practices are prohibited for PassForge implementation work:

- Copying source code
- Translating source code line-by-line into Python
- Closely paraphrasing implementation logic
- Reproducing implementation structure solely because it exists elsewhere
- Using another implementation as the primary design authority
- Treating a reference implementation's behavior as correct without checking
  the applicable specification

The intent is to maintain an independently authored implementation.

## Specification Traceability

Significant protocol behavior should be traceable through:

```text
Specification
    ↓
Requirement
    ↓
Design Decision
    ↓
Implementation
    ↓
Test
```

Where practical, record the relevant specification reference in:

- `docs/standards/TRACEABILITY.md`
- Architecture and design documentation
- Architecture Decision Records under `docs/decisions/`
- Tests where the reference materially improves understanding

Specification references should identify the actual specification revision
used by the project.

## Behavioral Comparison

Behavioral comparison with another implementation is permitted.

For example:

```text
Same input
    ↓
PassForge
    ↓
Result A

Same input
    ↓
Reference implementation
    ↓
Result B
```

Any difference should be investigated against the normative specification.

The objective is not to make PassForge behave like another implementation.
The objective is to determine and implement the behavior required by the
applicable specification.

## Test Vectors and External Data

Public test vectors and protocol fixtures may be used where their licensing
and terms permit.

Their source should be documented when included in the repository.

Tests should remain independently authored unless an external test explicitly
permits reuse under its applicable license or terms.

## Third-Party Dependencies

Third-party dependencies must retain their original licensing and
attribution.

Before introducing a dependency, consider:

- License compatibility
- Security posture
- Maintenance status
- Necessity
- Whether the dependency hides protocol behavior that should remain explicit
  within PassForge

A dependency should not be introduced solely to avoid implementing a core
WebAuthn/FIDO protocol component that is part of the project's learning and
implementation objectives.

## AI-Assisted Development

AI-assisted development tools may be used as development aids.

Any generated or AI-assisted code must:

1. Be reviewed by the contributor.
2. Be independently understood by the contributor.
3. Be verified against the applicable specification.
4. Comply with the same provenance requirements as manually written code.
5. Not intentionally reproduce source code from another implementation.

AI assistance does not change the project's requirement for independent
implementation.

## Commit and Decision Provenance

Significant implementation decisions should be understandable from project
history.

Where appropriate, record:

- Specification reference
- Reason for the design decision
- Alternatives considered
- Testing performed
- Interoperability implications

Signed commits are encouraged:

```bash
git commit -s
```

## Licensing

PassForge is open source and is distributed under the license specified in
the repository.

This provenance policy does not restrict reuse that is otherwise permitted
by the project's open-source license.

The policy exists to document **independent authorship and implementation
practice**, not to impose restrictions inconsistent with the chosen license.

## Changes to This Policy

Material changes to this document should be reviewed as part of the normal
project contribution process.

Changes should preserve the core principle:

> PassForge is independently implemented from normative WebAuthn/FIDO2
> specifications and validated through testing and interoperability.
