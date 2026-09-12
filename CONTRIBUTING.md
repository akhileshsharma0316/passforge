# Contributing

## Before you start
Passforge is currently in solo development towards MVP release v0.1.0 (see [README.md](./README.md)).

**External Pull Requests are not accepted yet**

In the meantime, feel free to open issues and discuss ideas. Opening an issue is the best way to flag a spec ambiguity, a bug or a suggestion before the project opens for contributions.

After MVP release, this section will be updated with guidelines to contribution.  

## Development Setup

**Pre-requisites**
- Python 3.11+
- PostgreSQL 15+ (via Docker Compose) 
- Docker

## Development Setup

Prerequisites: Python 3.11+, [uv](https://docs.astral.sh/uv/).

    git clone https://github.com/akhileshsharma0316/passforge.git
    cd passforge
    make dev

Run `make check` before opening a PR (lint + typecheck + test).
See the `Makefile` for all commands.

*(Database setup via Docker/Alembic will be added to `make dev` once those
are wired up — for now this covers dependency install and pre-commit.)*

## Provenance Requirements
All implementation work must follow [`docs/governance/PROVENANCE.md`](docs/governance/PROVENANCE.md)
In short, implement from the specifications, not from another FIOD/WebAuthN library's source code.
Other implementations must be used only for a black-box behavioral comparison - same input, compare input - never as a reference for how to structure or write the code.

## Branch Naming
Use `type/short-description`, lowercase, hyphen-separated:

| Type | Prefix | Example |
|---|---|---|
| Feature | `feat/` | `feat/cbor-decoder` |
| Documentation | `docs/` | `docs/traceability-registration` |
| Bug fix | `fix/` | `fix/cose-alg-validation` |
| Refactor | `refactor/` | `refactor/session-service` |
| Tests | `test/` | `test/webauthn-l3-vectors` |
| Chore (tooling, deps, CI) | `chore/` | `chore/ci-lint-workflow` |
| Spec/security fix | `security/` | `security/origin-check-bypass` |

Include the traceability ID when working against a tracked requirement,
e.g. `feat/reg-014-rp-id-hash`.

## Commit Messages
Follow [Conventional Commits](https://www.conventionalcommits.org/):
`type: short imperative description`, lowercase, no trailing period,
ideally under ~50 characters. Types match the branch prefixes above.

| Type | Format | Example |
|---|---|---|
| Feature | `feat: <what was added>` | `feat: add CBOR decoder for attestation objects` |
| Documentation | `docs: <what changed>` | `docs: add traceability table for registration` |
| Bug fix | `fix: <what was fixed>` | `fix: reject invalid COSE algorithm identifiers` |
| Refactor | `refactor: <what changed>` | `refactor: extract session service from identity module` |
| Tests | `test: <what's covered>` | `test: add WebAuthn L3 §16 vectors for assertion verify` |
| Chore | `chore: <what changed>` | `chore: add ruff and mypy to pre-commit config` |
| Security | `security: <what was fixed>` | `security: fix origin validation bypass in assertion flow` |

Use imperative mood ("add," "fix," "extract"), not past tense. Put spec
references, reasoning, and testing notes in the commit **body**, not the
title:

## Pull Request Checklist
Before opening a PR, confirm:

- [ ] Code follows the provenance requirements above
- [ ] Tests are added and passing for the change
- [ ] `docs/standards/TRACEABILITY.md` is updated for any requirement(s)
      touched by this change
- [ ] Commits are signed off (`git commit -s`)
- [ ] Linting and type checks pass locally
- [ ] Non-obvious spec-driven logic has a comment citing the section,
      e.g. `# WebAuthn L3 §2.4: reject non-canonical CBOR`

## Commit Signing
Sign off every commit to certify you wrote it or otherwise have the right
to submit it under the project's license (Developer Certificate of Origin
style):

```bash
git commit -s -m "Your message"
```

## Code Style/Linting
- Formatting: `black`
- Linting: `ruff`
- Type checking: `mypy`
- All three run via `pre-commit` and in CI; a PR with failing checks won't
  be reviewed until they're green.

## Reporting Issues VS Security Issues
- **Functional bugs, feature requests, spec-interpretation questions:**
  open a normal [GitHub issue](../../issues).
- **Security vulnerabilities** (anything that could make PassForge accept
  a credential, signature, or assertion it shouldn't): do **not** open a
  public issue. Follow the private reporting process in
  [`SECURITY.md`](SECURITY.md) instead.