# Cat Dome — a bermed, corbelled shelter with a wasp-cell wall

A printable test structure for the Canatara stage: small enough to build, cheap
enough to fail, and it tests the one thing the envelope claim depends on —
whether an unheated, self-ventilating, earth-sheltered shell stays liveable
through a Sarnia winter.

## What it is

- Interior: **440 mm diameter × 320 mm high**. Deliberately small. A cat heats
  the space with its own body; a large shelter is a cold shelter.
- Two openings, opposite each other, 150 mm wide. Cats will not use a shelter
  they can be cornered in.
- Wall: **5 mm skin + 16 mm hexagonal cell core + 5 mm skin = 26 mm.**
- Five corbelled tiers, eight segments each: **40 printed pieces** plus the
  chimney collar.
- Lower two tiers are bermed. The top three stand proud.

## The two findings that changed the design

**1. Print the segments flat, not standing.**

A dome printed in its final orientation has a near-horizontal apex — the top
tier came out at 64° of overhang and would need support. Laid flat on the bed,
each tier segment is a curved plate and the problem disappears. Every segment
fits within 200 × 200 mm.

This is also why the wall core is hexagonal cells rather than one continuous
air gap: laid flat, hex cell walls stand vertical on the bed and self-support.
A continuous cavity would sag.

**2. Do not put the wool in the cells.**

| core | R-value (m²K/W) | loss at ΔT=30K |
|---|---|---|
| air-filled cells | 0.692 | 13.2 W |
| wool-filled cells | 0.477 | 19.1 W |

Still air conducts at about 0.026 W/m·K. Wool is about 0.040. In a sealed 16 mm
cell the air is not convecting, so it is already the better insulator — packing
wool in makes the wall roughly 45% worse.

**Wool belongs on the inside face**, as a lining: contact comfort, moisture
buffering, and something to nest in. The cells stay empty.

## Does a cat heat it?

A resting cat produces roughly 8–15 W.

| ΔT | wall loss |
|---|---|
| 10 K | 4.4 W |
| 20 K | 8.8 W |
| 30 K | 13.2 W |
| 40 K | 17.6 W |

At ΔT = 30 K (−20 °C outside, +10 °C inside) the wall loses about what one cat
produces. That is marginal — and it is why the berm matters. Buried tiers see
soil temperature rather than air temperature, and in Sarnia that is the
difference between a ΔT of 30 and a ΔT of about 10.

**Berm the lower two tiers. The dome alone does not do it.**

## The chimney problem

A solar chimney moves air by making warm air leave. In August that is the whole
point — a litter space that does not ventilate is a space cats abandon.

In February it is a hole in the roof.

The collar takes a **plug**. Open through the warm months, closed through the
cold ones. If the plug is not there, the winter measurement will show the
envelope failing when what actually failed was the design of the chimney.

This is the first thing to instrument: temperature and humidity inside, with the
plug in and with it out, through one full year.

## Printing

- PETG or ASA. Not PLA — it creeps in sun and gets brittle below freezing.
- 0.3 mm layers, 3 perimeters, 15% infill on the skins.
- No supports needed if the segments are printed flat.
- Roughly 40 hours total across 40 pieces.
- Segments and tiers are numbered. Assemble from tier 0 up.

## What this stage does and does not test

**Tests:** whether the envelope holds temperature, whether ventilation keeps a
litter space liveable in August, whether the print survives a freeze-thaw cycle,
and whether animals given a free choice between this and a conventional
structure choose this one.

**Does not test:** human sanitation, which is the unsolved part and belongs on a
campus with plumbing twenty feet away, not in anybody's home.

## Files

- `catdome.scad` — parametric source. Change the numbers and re-render.
- `stl/tier0_seg.stl` … `stl/tier4_seg.stl` — one segment of each tier. Print
  eight of each.
