local vars = require("variables")

-- ============================================================
--  general — the frame around the ink. Colours, gaps, and
--  border weight all live in variables.lua, so they inherit
--  whatever palette you're already running there. The border
--  is the blade's edge: not decoration — a tool. Drag it,
--  and the window reshapes. The gaps are ma: negative space
--  held taut between cuts.
-- ============================================================
hl.config({
    general = {
        layout            = "dwindle",
        allow_tearing     = false,
        gaps_workspaces   = vars.workspaceGaps,
        gaps_in           = vars.windowGapsIn,
        gaps_out          = vars.windowGapsOut,
        border_size       = vars.windowBorderSize,
        col               = {
            active_border   = vars.activeWindowBorderColour,
            inactive_border = vars.inactiveWindowBorderColour,
        },

        -- the blade's edge is functional, not decorative — grab and cut
        resize_on_border          = true,    -- drag the border to resize: the edge is a weapon
        extend_border_grab_area   = 18,      -- generous reach — you don't fumble for a katana's grip
        hover_icon_on_border      = true,    -- visual intent before the cut
    },

    -- ========================================================
    --  dwindle — the split logic. Deliberate, not automatic:
    --  an iaido cut is chosen, not guessed. Splits flow
    --  right and downward — the reading direction of a scroll.
    -- ========================================================
    dwindle = {
        preserve_split      = true,   -- the composition holds its structure once cut
        smart_split         = false,  -- the split direction is chosen by hand — deliberate, not reflex
        smart_resizing      = true,   -- resizing flows around what's already there, ink finding the edges of dry paper
        force_split         = 2,      -- always split right/bottom — the scroll unrolls in one direction
        default_split_ratio = 1,   -- slightly asymmetric: sumi-e never centers the subject — off-balance is alive
    },

    -- ========================================================
    --  scrolling — a single column stretched wide, ink bleeding
    --  outward rather than balanced evenly on both sides.
    -- ========================================================
    scrolling = {
        fullscreen_on_one_column = true,   -- one thing on screen: give it everything (ma: full presence)
        focus_fit_method         = 1,
        column_width             = 0.6,    -- off-center weight, echoing the asymmetric composition
        follow_focus             = true,
        follow_min_visible       = 0.0,
        explicit_column_widths   = "0.4, 0.6, 0.8, 1.0",  -- monotonic widening: each step spreads further, like ink under pressure
    },
})
