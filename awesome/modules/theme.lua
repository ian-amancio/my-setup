local theme         = {}

theme.font          = "Noto Sans Bold 8"

theme.bg_normal     = "#31511E"
theme.bg_focus      = "#859F3D"
theme.bg_urgent     = "#FF0000"
theme.bg_minimize   = "#1A1A19"
theme.bg_systray    = theme.bg_minimize

theme.fg_normal     = "#FEFAE0"
theme.fg_focus      = theme.fg_normal
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = "#91231c"

return theme
