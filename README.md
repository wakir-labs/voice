# wakir-labs/voice — Relocation Manifest

This directory is intentionally a stub.

## Canonical location of the voice stack today

The actual code for Mira's voice stack (Whisper STT, Claude headless,
ElevenLabs TTS, push-to-talk loop) currently lives in the AI-Corp
governance repo, under:

```
agents-workspaces/mira/voice/
```

That is the source of truth as of 2026-05-03.

## Why this stub exists

ADR-0018 reserves `github.com/wakir-labs/voice` as the long-term home
for the voice CLI once we are ready to publish it as an open-source
component (Apache 2.0, consistent with the framework). The migration
is **not** done yet; doing it well requires:

1. Stripping persona-specific prompts from the runtime so the OSS
   component is generic ("voice-bridge for any Claude headless
   persona") and persona files plug in via configuration.
2. Replacing the local `.env` flow with documented secret-injection
   patterns suited for non-AI-Corp users.
3. Adding install instructions that work outside our toolbox/Silverblue
   setup (Linux, macOS, optionally Windows via WSL).
4. Cutting the dependency on the AI-Corp activity-log and audit-trail
   wiring; voice should call hooks rather than write directly to a
   governance file path.

## What this skeleton ships today

Just this README, so the repo can be created early to claim the slug
and so that links in `wakirlabs.com` and the framework README do not
404 once we begin publishing. The first non-stub commit will follow
the migration plan above.

## License (when content lands)

Apache 2.0, same as the framework.
