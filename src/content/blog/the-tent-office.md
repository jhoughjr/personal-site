---
title: 'The Tent Office'
description: 'I am planning my own homelessness with a calculator I wrote. Legally blind, autistic, Crohn''s, twenty years shipping software — and the math on a tent beats the house I''m in.'
pubDate: 'Jul 08 2026'
---

I'm planning to be homeless. On purpose, with a calculator I wrote myself.

Let me get the disclosures out of the way, because they're load-bearing: I'm
legally blind. I'm autistic. I have Crohn's disease. I've also been shipping
software professionally for twenty years — pair-programmed Objective-C at
Asynchrony, built the poll book most of this country votes on at KnowInk, and
currently run a self-hosted platform off a single-board computer that serves
this very page. Hold both of those paragraphs in your head at once. Most
people can't. They meet the first paragraph and round the second one down.

## The house

I live in my mother's house. It's hoarded. There's mold. The basement
flooded and stayed that way. There is rotten food in rooms where food should
not be.

Here's what that means with Crohn's: mold isn't a smell, it's an exposure.
A house like this isn't shelter that happens to be unpleasant — it's a slow,
continuous medical event that I sleep inside of. When I say a tent might be
*healthier*, that is not rhetoric. I've done the air-quality math the way I
do all math: honestly, because lying to yourself about inputs just moves the
error bar to somewhere more expensive.

## The queue is built backwards

I've asked for help before. Programs, lines, intake forms. Nothing moved.
It took me years to understand that this wasn't bad luck — it's the
mechanism. Housing assistance runs on a triage system called coordinated
entry, and if you're sheltered in *someone else's* house — what HUD calls
"doubled up" — you are scored as fine. It does not matter what's growing on
the walls. There is no field on the form for "the basement is a biohazard."

The moment I walk out with a tent, I become "Category 1: literally
homeless." Add documented disabilities and I jump to the *highest* priority
tier. Read that again: the system's help unlocks **after** the tent, not
before. The queue only sees you once you've already fallen. So the tent
isn't just an exit from the mold — it's the key that turns the lock. If I
do this, I do it with every intake appointment pre-booked, so that night one
in the tent is also day one on the list, in the queue their own rules force
me into.

I don't think the people who designed this have ever stood in it.

## The engineering

Here's where it gets fun, because physics — unlike intake systems — is a
fair opponent. It tells you the price up front and never changes the terms.

My entire generation capacity is 200 watts of panel: one 100 W panel on a
Jackery Explorer 300, one on a Renogy controller feeding a Group 27 marine
battery. In Missouri sun that's about **750 watt-hours a day** in summer,
maybe 450 in winter. Usable storage across both banks: roughly **800 Wh**,
if I respect the lead-acid's 50% floor — and you always respect the floor,
because a marine battery holds a grudge.

A MacBook workday is 300–400 Wh. Phone-as-hotspot is another 50 — and
hotspot it must be, because Starlink's 60-watt dish would eat two-thirds of
my daily budget by itself. A DC fan for the Missouri summer, an LED light,
and the ledger closes at roughly 650 Wh against 750 generated. It fits.
Barely, honestly, with cloudy days settled at the library like a gentleman.

No inverter, before anyone suggests one. An inverter is a 10–15% tax plus
idle draw for the privilege of converting DC to AC so my laptop can convert
it back. A $25 12-volt USB-C PD adapter runs the MacBook straight off the
marine bank. Refusing unnecessary conversions is the whole game at this
scale — every watt is 2× leverage when the sun is your income.

I ran all of this through [watts](https://watts.jimmyhoughjr.net), the
electricity calculator I built — it does battery runtime and solar-aware
outage math now, so I pointed it at my own life.
[Here's the actual summer plan](https://watts.jimmyhoughjr.net/?r=d0ff39765e7041607c070570),
live, public, interactive. Toggle my devices on and off and watch my margins
move. That's what transparency looks like when an engineer does it.

## The doors that don't care where you sleep

Writing this partly for the next disabled dev who searches these terms at
3am: some doors are disability-based, not housing-based, and nobody at them
asks whose name is on a deed.

- **Centers for Independent Living** — housing navigation run *by* disabled
  people. Not a generic intake line. Different species entirely.
- **State rehabilitation services for the blind** — vocational rehab exists
  to keep you *employed*. Assistive tech, work supports, caseworkers who
  open other doors.
- **Blind-category SSDI** — statutory blindness has its own rules, including
  an earnings limit near $2,700/month. You can work and still qualify. Most
  people who "got denied" were never assessed under the right category.
- **A doctor's letter** stating your housing worsens your condition. One
  page. It converts you from "waitlist" to "documented medical necessity"
  in the only language these systems parse.

## The point

I was told, more than once and with kindness, that people like me should
manage expectations. Meanwhile I run production infrastructure from inside
a hoard, budget my survival in watt-hours, and write this on a machine
powered by a battery I will shortly be carrying into the woods.

Transparency isn't bravery. It's cheap — it costs one blog post. What's
expensive is the assumption tax disabled people pay every day: the rounding
error where "legally blind, autistic, Crohn's" gets evaluated and "twenty
years of shipped systems" gets discarded as noise. I'm publishing the
whole ledger — the platform, the API bills, and now this — because receipts
are the one argument that survives contact with low expectations.

The sun gives Missouri 4.7 peak hours a day. The Emperor provides. The rest
is engineering.
