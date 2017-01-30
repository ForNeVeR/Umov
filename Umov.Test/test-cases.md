FutureGadget FDTD Test Cases
============================

Single-dimensional
------------------

# Case 1. Empty field

Simulate empty electromagnetic field (just as a sanity check).

Field size: 200 cells.

Tests:

1. E = 0, H = 0 at T = 0 for all cells.
2. E = 0, H = 0 at T = 100 for all cells.
3. E = 0, H = 0 at T = 101 for all cells.

# Case 2. Simple static field

Simulate static electrical field.

Field size: 200 cells.

One source at x = 100, static signal E = 10 V / m.

Cell size 1 m, time step 1 / 3*10^8 s (how could I ensure this?).

Tests:

1. E = 0, H = 0 at T = 0 for all cells.
2. E = 10 V / m at T = 1 for cell with x = 100.
3. H = 0 A / m at T = 1 for all cells.
4. TODO: calculate H for T = 1 for some cells.

# Case 3. Sine wave source

Field size: 200 cells.

One sine E source at x = 10 (frequency f = 50 Hz), amplitude 10 V / m.

Tests:

1. E = 0, H = 0 at T = 0 for all cells.
2. E = 10 * dT * 50 * omega for T = 1 for x = 1.
3. TODO: Calculate H for T = 1, 2.
