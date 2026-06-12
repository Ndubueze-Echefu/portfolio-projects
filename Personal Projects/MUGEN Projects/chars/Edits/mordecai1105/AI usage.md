# Mordecai MUGEN Character Development - AI Usage Log

## Session 1: Audio & Visual Effects (2026-05-26 to 2026-06-02)

---

### Q1: For the Green Lantern hyper, are all the playsnd in separate channels?

**A:** No, they were NOT all in separate channels initially.

**Statedef 6001 (Lantern Hammer) breakdown:**
| Sound | Channel |
|-------|---------|
| "Wahoo!" -Blu | 1 |
| "Ow!" -Blu | 2 |
| Glass Break SFX | 3 |
| Spawning green hammer | 4 |
| "WOOHOO" -The Crew | 5 |
| WHAM! SFX | 6 |

---

### Q2: Do an update of channel separation on statedefs 6001, 10000, 10001

**A:** ✅ **COMPLETED**

**Changes Made:**
- **6001 (Lantern Hammer)** - Already had channels 1-6 ✓
- **10000 (Big Bird)** - Already had channels 7-9 ✓
- **10001 (Angry Bird)** - Added missing channels:
  - Special Boost → `channel = 7`
  - Menacing laugh → `channel = 8`
  - Slingshot → `channel = 10`
  - Landing SFX → `channel = 11`

**File Modified:** `Coding/Supers.cns`

---

### Q3: The hit sparks are small for me. How do I increase it?

**A:** HitDef doesn't have direct spark scaling. Options:
1. **Try different sparkno** - `s7030`, `s7040`, etc may be larger
2. **Add companion Explod** with `scale = 2,2` or higher
3. **Modify sprite** in .sff file (permanent solution)

**Recommendation:** Add scaled Explod for better MUGEN compatibility

---

### Q4: Can I do it within HitDef?

**A:** No. HitDef only supports:
- `sparkno` - which spark animation
- `sparkxy` - position offset
- `sparkzoffset` - depth

**Solution:** Use companion Explod states with scale parameter

---

### Q5: What's weird is it's small in MUGEN, but big in IKEMEN Go. Why?

**A:** Engine rendering differences:
- **Original MUGEN** - Older renderer, fixed spark sizes
- **IKEMEN Go** - Improved graphics, scales effects better
- **Workaround:** Add scaled Explods to compensate for MUGEN

---

### Q6: But I want this character to also work in MUGEN...

**A:** Add companion scaled Explod sparks after each HitDef:
```
[State, Scaled Spark]
type = Explod
trigger1 = (same as HitDef)
anim = 7018
scale = 2,2
removetime = -2
```

Result: MUGEN sees double sparks (visible), IKEMEN sees both (redundant but works)

---

### Q7: In .def file, list all attributes in [Size] section

**A:** Standard MUGEN [Size] attributes:
```
xscale = 1.0              ;horizontal scale
yscale = 1.0              ;vertical scale
ground.back = XX          ;back distance
ground.front = XX         ;front distance
air.back = XX             ;air back distance
air.front = XX            ;air front distance
height = XXX              ;character height
head.pos = X, Y           ;head position
mid.pos = X, Y            ;mid-body position
showtransparency = 0      ;opacity flag
```

**Note:** Your character doesn't have [Size] section currently

---

### Q8: Spark scale in .air file is ignored by MUGEN but works in IKEMEN Go

**A:** Known limitation - Original MUGEN has poor .air scale support. IKEMEN Go improved it.

**Workaround:** Use Explod states in .cns with scale parameter (preferred solution)

---

### Q9: In Statedef 6002, SuperPause explod looks blue instead of purple. Why?

**A:** Three possible causes:
1. **bgpalfx darkening** - color multiplier shifts hue
2. **SuperPause animation** - sprite colors off
3. **Sprite has too much white** - washes out purple

**Solution:** Check which by disabling bgpalfx one by one

**Root Cause Found:** Sprite has excess white + SuperPause darkening = blue appearance

---

### Q10: How can I make HitDef sound effects use separate channels?

**A:** HitDef doesn't support direct channel parameter for hitsound/guardsound.

**Workaround:**
1. Create companion PlaySnd states on separate channels
2. Remove HitDef hitsound, use only PlaySnd
3. Use `ignorehitpause = 1` for priority during pause

**Example:**
```
[State, Hit Sound Channel]
type = PlaySnd
trigger1 = Timemod = 4,0
value = S5,7
channel = 13
```

---

### Q11: In Statedef 6002, hitsound plays too much and blocks other sounds

**A:** Use **MVC1-style stacking** - Put all hit sounds on SAME channel:
- New hit automatically cancels previous sound
- No overlapping hitsounds
- Prevents audio conflicts

**Implementation:**
```
[State 6002, Hit Sound]
type = PlaySnd
trigger1 = Timemod = 4,0
value = S5,7
channel = 13      ;all hits use same channel

[State 6002, HitDef]
type = HitDef
...
hitsound = -1,-1  ;disable default to avoid duplication
```

---

### Q12: Convert bgpalfx code snippet while avoiding plagiarism

**A:** Create hybrid approach:
- Use different math constants
- Adjust timing/ranges for character
- Keep own structure

**Example:**
```
[State 900, BG PalFX Transition]
type = bgpalfx
trigger1 = 1
time = 1
add = ceil(-200 + 13.5*time), ceil(-150 + 10*time), ceil(-50 + 3.4*time)
mul = 255 - (3.6*time), 255 - (3.6*time), 256
color = 12*time
```

**Alternative:** Keep your structure, optimize formulas with simplified math

---

### Q13: Error: Can't open Palletes/cardinal.act

**A:** Missing palette file reference.

**Cause:** Fighter Factory lost track during multiple edits - file reference desync'd

**Solution:** Reload character in Fighter Factory to rescan files

**Status:** ✅ RESOLVED

---

---

## Session 2: Timing Adjustments (2026-06-08)

### Q1: Update trigger1 time values for State 6010 Lv3 BG Pal effects

**A:** ✅ **COMPLETED**

**Changes Made:**
- **[State 6010, Lv3 BG Pal: Flash]** - `trigger1 = time <= 5` → `trigger1 = time <= 30`
- **[State 6010, Lv3 BG Pal: Slowly remove flash]** - `trigger1 = (time = [6, 69])` → `trigger1 = (time = [31, 94])`
- **[State 6010, Lv3 BG Pal: stay purple]** - `trigger1 = time >= 70` → `trigger1 = time >= 95`

**Applied offset:** +25 frames to all trigger1 time values

**File Modified:** `Coding/Supers.cns`

---

---

## Session 3: Glass Break Loop Fix (2026-06-10)

### Q1: Issue with Glass break transition - glass break sprites and sfx repeat endlessly

**A:** ✅ **DIAGNOSED & FIXED**

**Root Cause:** Statedef 21000 (Hyper Background Helper) had conflicting settings:
- `trigger1 = animtime = 0` (line 526) - triggers every frame when condition met
- `persistent = 1` (line 539) - allows trigger to re-evaluate continuously
- Combined: explod gets recreated repeatedly, sound plays repeatedly

**The Fix:**
```
[State 6000, Glass Break]
type = explod
trigger1 = animtime = 0
...
persistent = 0     ;CHANGED FROM: persistent = 1
```

**Why This Works:**
- `persistent = 0` (default) = trigger only fires once per condition
- Glass Break explod spawns once, sfx plays once, done
- Matches working behavior of Statedef 6000 (Society Laser) which uses `Animelem = 27` trigger

**Comparison:**
- **Statedef 6000** (working) - Uses `trigger1 = Animelem = 27` (one-time animation event)
- **Statedef 21000** (fixed) - Now uses `persistent = 0` to prevent loop

**File Modified:** `Coding/Helpers.cns` - Line 539

---

---

## Session 4: SuperPause Helper & Screen Flash (2026-06-12)

### Q1: How can I make a helper move during a game pause? (Level 1 screen flash effect)

**A:** Use `pausemovetime = 999999` on the helper creation state:
```
[State 6000, Level 1 Flash]
type = helper
trigger1 = animelem = 2
stateno = 20000
ID = 20000
name = "Level 1 Flash"
pausemovetime = 999999
```

---

### Q2: Didn't work. Does pausemovetime work under SuperPause?

**A:** ❌ **No.** `pausemovetime` only works during a regular **Pause**, not a **SuperPause**.

During a SuperPause, everything is frozen except the SuperPause owner (and only for `movetime` ticks). Helpers cannot be made active during SuperPause via `pausemovetime`.

**Alternatives considered:**
1. Run flash logic directly in the player's own states (bgpalfx in statedef 6000)
2. Use a regular Pause instead of SuperPause
3. Sequence the helper after the SuperPause ends
4. Use owner-side tricks during `movetime`

---

### Q3: Found supermovetime — confirmed fix

**A:** ✅ **RESOLVED**

`supermovetime` is the correct parameter for SuperPause (separate from `pausemovetime`):
```
[State 6000, Level 1 Flash]
type = helper
trigger1 = animelem = 2
stateno = 20000
ID = 20000
name = "Level 1 Flash"
supermovetime = 999999
```

---

### Q4: Can I destroy a helper inline with the main code snippet?

**A:** Yes, using `DestroyHelper` by ID:
```
[State 6000, Destroy Level 1 Flash]
type = DestroyHelper
trigger1 = someCondition
ID = 20000
```

**Note:** In this case the helper is already self-managing via:
```
[State 20000, Disappear]
type = DestroySelf
trigger1 = parent, animtime = 0
```
Manual destruction only needed if you want to kill it early (e.g. on move interrupt). Example safety destroy:
```
[State 6000, Destroy Level 1 Flash]
type = DestroyHelper
trigger1 = time >= 50
ID = 20000
```

---

## To-Do / Ongoing Items
- [ ] Add scaled Explod sparks to hypers (optional, for MUGEN compatibility)
- [ ] MVC1-style hitsound implementation in 6002
- [ ] Sprite editing for purple spark (if needed)

---

## Format Notes
- Each session gets a date marker
- Questions are numbered sequentially
- Status: ✅ = completed, ⏳ = in progress, ❓ = needs input
- Code examples included for implementation reference