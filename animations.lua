hl.config({
    animations = {
        enabled = true,
    },
})

-- ============================================================
--  Animation curves — sumi-e ink wash meets iaido (the art of
--  drawing a blade in a single, decisive motion)
--
--  Every ENTRANCE is a "draw": fast, decisive, a fraction of
--  overshoot, like a blade settling after the cut.
--  Every EXIT is "ink in water": slow, soft, dissolving.
--  Everything IN BETWEEN is "ma" — negative space, stillness.
-- ============================================================

hl.curve("iaido",     { type = "bezier", points = { { 0.16, 1.06 }, { 0.3, 1 } } })   -- the draw: sharp, decisive, a hair of overshoot
hl.curve("inkBleed",  { type = "bezier", points = { { 0.13, 0.85 }, { 0.02, 1 } } })  -- the dissolve: long soft tail, ink spreading into water
hl.curve("ma",        { type = "bezier", points = { { 0.35, 0 },   { 0.65, 1 } } })   -- negative space: calm, balanced, unremarkable motion
hl.curve("kissaki",   { type = "bezier", points = { { 0.05, 1 },   { 0.1, 1 } } })    -- the blade's edge: near-instant, crisp, no wasted motion
hl.curve("sumiSlide", { type = "bezier", points = { { 0.22, 0.61 }, { 0.36, 1 } } })  -- brush gliding across paper — workspace transitions
hl.curve("shoji",     { type = "bezier", points = { { 0.05, 0.7 },  { 0.1, 1 } } })   -- a paper screen sliding open — special workspace

-- ============================================================
--  Layers — the shell's own strokes (bar, launcher, dashboard,
--  notifications). Quick to appear, slow to fade away.
-- ============================================================
hl.animation({ leaf = "layersIn",      enabled = true, speed = 2.2, bezier = "iaido",    style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 4.5, bezier = "inkBleed", style = "slide" })
hl.animation({ leaf = "fadeLayers",    enabled = true, speed = 3,   bezier = "ma" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 2,   bezier = "iaido" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 4.5, bezier = "inkBleed" })

-- ============================================================
--  Windows — the figure stepping into frame, then dissolving out
-- ============================================================
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 2.6, bezier = "iaido",    style = "popin 88%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 4.8, bezier = "inkBleed", style = "popin 92%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 7, bezier = "iaido" })

-- ============================================================
--  Workspaces — a single brush stroke sliding the scene across
--  the paper. Special workspace slides like a shoji screen.
-- ============================================================
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "sumiSlide", style = "slidefade 12%" })

hl.animation({
    leaf    = "specialWorkspace",
    enabled = true,
    speed   = 4,
    bezier  = "shoji",
    style   = "slidefadevert 15%"
})

-- ============================================================
--  Fade / focus / dimming — the quiet parts: attention shifting
--  and settling, like ink resolving into the wash.
-- ============================================================
hl.animation({ leaf = "fade",       enabled = true, speed = 3.5, bezier = "ma" })
hl.animation({ leaf = "fadeIn",     enabled = true, speed = 2.4, bezier = "iaido" })
hl.animation({ leaf = "fadeOut",    enabled = true, speed = 4.8, bezier = "inkBleed" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 1.8, bezier = "kissaki" }) -- focus change: instant, blade-edge precise
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 3.2, bezier = "ma" })
hl.animation({ leaf = "fadeDim",    enabled = true, speed = 6.5, bezier = "inkBleed" }) -- inactive windows sink slowly into grey

-- ============================================================
--  Border — the blade's edge. Crisp color snap on focus change,
--  plus a slow ambient glint traveling the active border gradient
--  (new addition — light catching a sheathed blade).
-- ============================================================
hl.animation({ leaf = "border",      enabled = true, speed = 3,  bezier = "kissaki" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 60, bezier = "ma", style = "loop" })
