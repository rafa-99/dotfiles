/* See LICENSE file for copyright and license details. */
#include "colors.h"

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int gappx     = 6;        /* gaps between windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = {
	"CaskaydiaCove Nerd Font Mono:pixelsize=18",
	"Noto Color Emoji:pixelsize=18"
};
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { norm_fg, norm_bg, norm_border }, // Unfocused Windows
	[SchemeSel]  = { sel_fg,  sel_bg,  sel_border  }, // Focused Windows
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ NULL,       NULL,       NULL,       0,            0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const Key keys[] = {
	/* modifier                     key        function        argument */

	/* Window Management */
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY|ControlMask,           XK_p,      incnmaster,     {.i = +1 } },
	{ MODKEY|ControlMask,           XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY|ControlMask,           XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY|ControlMask,           XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_space,  zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_x,      quit,           {0} },
	{ MODKEY,                       XK_h,      viewtoleft,     {0} },
	{ MODKEY,                       XK_l,      viewtoright,    {0} },
	{ MODKEY|ShiftMask,             XK_h,      tagtoleft,      {0} },
	{ MODKEY|ShiftMask,             XK_l,      tagtoright,     {0} },

	/* Bar Management */
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY|Mod1Mask,              XK_1,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY|Mod1Mask,              XK_2,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY|Mod1Mask,              XK_3,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY|Mod1Mask,              XK_space,  togglefloating, {0} },
	{ MODKEY|Mod1Mask,              XK_f,      togglefullscr,  {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)

	/* Programs */
	{ MODKEY,                       XK_d,      spawn,          SHCMD("$LAUNCHER") },// Program Launcher
	{ MODKEY,                       XK_Return, spawn,          SHCMD("$TERMINAL") },// Emoji Selector
	{ MODKEY,                       XK_w,      spawn,          SHCMD("$BROWSER") },// Web Browser
	{ MODKEY,                       XK_f,      spawn,          SHCMD("$TERMINAL -e $FILE") }, // File Manager
	{ MODKEY,                       XK_n,      spawn,          SHCMD("$TERMINAL -e $NEWS") }, //RSS Reader
	{ MODKEY|ShiftMask,             XK_w,      spawn,          SHCMD("$TERMINAL -e weather") },//Weather Forecast
	{ MODKEY,                       XK_s,      spawn,          SHCMD("search") },//Quick Web Search
	{ MODKEY,                       XK_e,      spawn,          SHCMD("emojis") },//Emoji Selector
	{ MODKEY|ShiftMask,             XK_o,      spawn,          SHCMD("monitor") },//Set Screen Output
	{ MODKEY,                       XK_m,      spawn,          SHCMD("musicselect") },//Music Selector
	{ MODKEY|ShiftMask,             XK_c,      spawn,          SHCMD("powermenu") },//Power Menu
	{ MODKEY,                       XK_c,      spawn,          SHCMD("colorpick") },//Color Picker
	{ MODKEY,                       XK_p,      spawn,          SHCMD("screenshot") },//Screenshot Tool Script
	{ MODKEY|ShiftMask,             XK_s,      spawn,          SHCMD("screenkeys") },//Enable Screenkeys
	{ MODKEY,                       XK_t,      spawn,          SHCMD("switchLayout") },//Switches Between Keyboard Layouts
	{ MODKEY,                       XK_x,      spawn,          SHCMD("xmouseless") },//Virtual Mouse

	/* Quick Actions */
	{ MODKEY,                       XK_F1,     spawn,          SHCMD("mixer t") },//Toggle Mute
	{ MODKEY,                       XK_F2,     spawn,          SHCMD("mixer -") },//Decrease Volume by 5%
	{ MODKEY,                       XK_F3,     spawn,          SHCMD("mixer +") },//Increase Volume by 5%
	{ MODKEY,                       XK_F4,     spawn,          SHCMD("mixer m") },//Toggle Mic Mute
	{ MODKEY,                       XK_F5,     spawn,          SHCMD("backlightctl -") },//Decrease Brightness by 5%
	{ MODKEY,                       XK_F6,     spawn,          SHCMD("backlightctl +") },//Increase Brightness by 5%
	{ MODKEY,                       XK_F7,     spawn,          SHCMD("bluelight") },//Toggle Bluelight Filter
	{ MODKEY,                       XK_F8,     spawn,          SHCMD("screenrecord") },//Screen Recording Script
	{ MODKEY,                       XK_F9,     spawn,          SHCMD("mpc toggle") },//Music Pause/Play
	{ MODKEY,                       XK_F10,    spawn,          SHCMD("pkill mpd") },//Music Quit/Stop
	{ MODKEY,                       XK_F11,    spawn,          SHCMD("mpc prev") },//Music Previous
	{ MODKEY,                       XK_F12,    spawn,          SHCMD("mpc next") },//Music Next
	{ 0,                            XF86XK_AudioLowerVolume,   spawn,          SHCMD("mixer -") },//Decrease Volume by 5%
	{ 0,                            XF86XK_AudioRaiseVolume,   spawn,          SHCMD("mixer +") },//Increase Volume by 5%
	{ 0,                            XF86XK_AudioMute,          spawn,          SHCMD("mixer t") },//Toggle Mute
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          SHCMD("$TERMINAL") },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};
