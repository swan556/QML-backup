local scheme = require("scheme.current")
local vars   = require("variables")

-- ============================================================
--  group — tsukamaki (柄巻). The groupbar is a Psycho-Pass
--  HUD strip: razor-thin, geometric sans-serif, the active tab
--  burns at full opacity while the rest dissolve into nothing.
--  This isn't a browser tab bar — it's a targeting reticle.
-- ============================================================

hl.config({
    group = {
        insert_after_current     = true,    -- the scroll extends forward, never backwards
        focus_removed_window     = true,    -- no vacuum after the cut — focus flows
        merge_groups_on_drag     = true,    -- magnetic binding
        merge_groups_on_groupbar = true,    -- deliberate merge on contact
        drag_into_group          = 2,       -- 2 = always allow drag-merge — no resistance, fluid regrouping

        col = {
            border_active          = vars.activeWindowBorderColour,
            border_inactive        = "rgba(" .. scheme.onSurfaceVariant .. "08)",   -- grouped inactive borders: near-invisible — the group IS the border
            border_locked_active   = "rgba(" .. scheme.tertiary .. "ff)",           -- locked group: different color entirely — a sealed blade, distinct from drawn
            border_locked_inactive = "rgba(" .. scheme.onSurfaceVariant .. "08)",
        },

        groupbar = {
            font_family               = "Inter",          -- geometric sans-serif — anime HUD, not IDE tabs. install: pacman -S inter-font
            font_size                 = 10,                -- small and precise — HUD overlay text, not a header
            gradients                 = false,             -- flat color blocks — cleaner, sharper, more anime-UI
            gradient_round_only_edges = true,
            gradient_rounding         = 10,
            height                    = 16,                -- 16px: a targeting line, not a tab bar
            indicator_height          = 2,                 -- kissaki — the thinnest visible mark of selection
            gaps_in                   = 1,                 -- tabs nearly fused: one continuous strip
            gaps_out                  = 0,                 -- zero gap to window: the bar IS part of the window, not above it
            scrolling                 = true,
            render_titles             = true,
            text_color                = "rgb(" .. scheme.onPrimary .. ")",
            col                       = {
                active          = "rgba(" .. scheme.primary .. "ff)",     -- 100% opaque — absolute, undeniable
                inactive        = "rgba(" .. scheme.surfaceVariant .. "18)",  -- near-transparent: ghost impressions, not tabs
                locked_active   = "rgba(" .. scheme.tertiary .. "dd)",    -- locked uses tertiary — different sword, different steel
                locked_inactive = "rgba(" .. scheme.outline .. "18)",     -- locked ghost: same near-nothing
            },
        },
    },
})
