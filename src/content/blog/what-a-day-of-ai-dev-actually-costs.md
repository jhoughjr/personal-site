---
title: 'What a day of AI-assisted development actually costs, with receipts'
description: 'I pulled per-message token usage from my Claude Code transcripts, priced it at real API rates, and published the ledger. One heavy day: $423 API-equivalent, $0 paid, six apps shipped. Here is the math, the mistakes, and what actually drives the cost.'
pubDate: 'Jul 08 2026'
---

There's a lot of arguing about what AI coding assistants cost and whether
they're worth it. Almost nobody posts receipts. I have receipts — my
assistant and I built the reporting pipeline together, on itself.

**The setup:** I run [Claude Code](https://claude.com/claude-code) on a Max
plan. Claude Code keeps complete local transcripts, including per-message
token usage. So we wrote a script that sums every message across every
session, prices it at each model's actual API rates (including prompt-cache
write and read rates), and publishes a
[daily ledger](https://docs.jimmyhoughjr.net/#claude-usage-ledger.md).
Everything below comes from that.

## One heavy day

July 7 was the heaviest day I've recorded: **$423.21 of API-equivalent
usage. Actually paid: $0** — it rode the subscription.

What that bought, in one continuous session with one agent: a
[live electricity cost calculator](https://watts.jimmyhoughjr.net) with an
EIA rate pipeline that refreshes itself monthly by cron; an auth-and-storage
service written in Node, then **ported to Swift/Hummingbird 2 and swapped
into production live** (memory dropped from 54 MB to 24.7 MB — the
[measured comparison is published](https://head2head.jimmyhoughjr.net));
a benchmark report site; status boards; and the beginnings of
[a documented platform](https://github.com/jhoughjr/roost) that now creates
new deployed apps in one command. All running on one Orange Pi behind a
Cloudflare tunnel.

## Where the money actually goes

The surprise isn't the total — it's the shape. The models *wrote* about
1.45M tokens that day. They *re-read* about 475M.

Every API call in an agentic session replays the conversation so far. Late
in a long session that's 300K+ tokens of context per call, thousands of
calls per day. Prompt caching bills those re-reads at 10% of the fresh-input
rate, and they still ended up as **~70% of the day's cost**. Output — the
code, the answers, the thing you think you're paying for — was about 20%.

If you're evaluating AI dev tools on price, this is the number to
understand: **you pay for context, not code.** Long sessions are
quadratic-ish in cost; splitting work into fresh sessions is cheaper than it
feels.

## The model mix matters more than anything

Across the trailing nine days, the ledger splits like this: the big models
(Opus, and Anthropic's new Fable tier) did the architecture, debugging, and
prose — a few hundred dollars API-equivalent. **Haiku, the small model,
handled 1,103 calls for $15.70 total.** The days I leaned on it cost $2–4;
days that ran everything through big models cost $100+.

Since then we've made it policy: mechanical work — scripted file edits, doc
sweeps, bulk generation — goes to Haiku sub-agents with explicit
instructions; judgment stays on the big model; anything fully deterministic
becomes a plain script, model tier zero. The expensive model writes the
spec, the cheap model executes it, the script does it for free next time.

## The mistakes are the credibility

First version of the day report said **$830**. It was wrong twice: I
counted whole transcript files (which swept in messages from prior days
sitting in still-active sessions), and under-deduplicated streamed records.
Filtering by per-message timestamps got the real number, $423. I'm leaving
the correction in the published report — if you're going to post receipts,
post the audit trail too.

## Is it worth it?

At subscription prices, obviously — the plan absorbed roughly its own
monthly cost in API-equivalent value *in one day*. At raw API prices,
$80–160 for that day's output (depending on model tier) against what
shipped — I've billed clients more for less, and so have you.

The ledger updates nightly and is public. The whole platform it measures —
the playbook, the one-command deploy tooling, the scripts that generate
these very reports — is [open on GitHub](https://github.com/jhoughjr/roost).
Argue with the numbers, not the vibes.
