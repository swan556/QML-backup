local vars = require("variables")

-- ============================================================
--  Decoration — the paper, the ink density, the lantern light.
--
--  variables.lua sets the numbers; this file shapes how those
--  numbers feel. Grain in the blur like handmade washi paper,
--  inactive windows sinking into the wash, fullscreen claiming
--  total presence, shadows falling like a low dojo lantern.
-- ============================================================

hl.config({
    decoration = {
        rounding          = vars.windowRounding,

        active_opacity    = vars.windowOpacity,         -- rice paper: translucent, alive
        inactive_opacity  = vars.windowOpacity - 0.08,  -- sheathed windows sink deeper into the wash
        fullscreen_opacity = 1.0,                       -- fullscreen: the blade fully drawn — total, undivided presence

        -- ==========================================================
        --  Blur — not just gaussian softness. Grain, muted vibrancy,
        --  slight darkness — this is washi paper texture, not
        --  frosted glass from a phone UI.
        -- ==========================================================
        blur = {
            enabled           = vars.blurEnabled,
            xray              = vars.blurXray,
            special           = vars.blurSpecialWs,
            ignore_opacity    = true,
            new_optimizations = true,
            popups            = vars.blurPopups,
            input_methods     = vars.blurInputMethods,
            size              = vars.blurSize,
            passes            = vars.blurPasses,
            noise             = 0.025,    -- subtle grain: handmade paper, not machine-polished glass
            contrast          = 1.1,      -- ink on paper has bite — slightly sharper than neutral
            brightness        = 0.88,     -- the paper is aged, not bleached white — dim warmth
            vibrancy          = 0.25,     -- muted color bleed: sumi-e is almost monochrome
            vibrancy_darkness  = 0.08,    -- in the darks, color nearly vanishes — pure ink
        },

        -- ==========================================================
        --  Shadow — a low lantern in the dojo. The light source sits
        --  slightly above-left, casting the shadow down and right.
        -- ==========================================================
        shadow = {
            enabled      = vars.shadowEnabled,
            range        = vars.shadowRange,
            render_power = vars.shadowRenderPower,
            color        = vars.shadowColour,
            offset       = { 3, 4 },     -- low lantern: shadow falls down-right, not dead center
            scale        = 0.97,          -- shadow slightly tighter than the window — crisp silhouette
        },

        -- ==========================================================
        --  Dimming — inactive windows recede like background figures
        --  in a scroll painting. The focused window is the subject;
        --  everything else is atmosphere.
        -- ==========================================================
        dim_inactive = true,
        dim_strength = 0.12,     -- subtle: they fade, not disappear — background figures, not ghosts
        dim_special  = 0.45,     -- special workspace darkens the world behind it: stepping into shadow
        dim_around   = 0.35,     -- floating dialogs: the world holds its breath around them
    },
})
