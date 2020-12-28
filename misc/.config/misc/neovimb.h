/* features */
/* show wget style progressbar in status bar */
#define FEATURE_WGET_PROGRESS_BAR
/* show load progress in window title */
#define FEATURE_TITLE_PROGRESS
/* show page title in url completions */
#define FEATURE_TITLE_IN_COMPLETION
/* enable the read it later queue */
#define FEATURE_QUEUE
/* disable X window embedding */
/* #define FEATURE_NO_XEMBED */

#ifdef FEATURE_WGET_PROGRESS_BAR
/* chars to use for the progressbar */
#define PROGRESS_BAR             "=> "
#define PROGRESS_BAR_LEN            20
#endif

#define FEATURE_AUTOCMD

/* time in seconds after that message will be removed from inputbox if the
 * message where only temporary */
#define MESSAGE_TIMEOUT             5

/* number of chars to be shown in statusbar for ambiguous commands */
#define SHOWCMD_LEN                 10
/* css applied to the gui elements regardless of user's settings */
#define GUI_STYLE_CSS_BASE          "#input text{background-color:inherit;color:inherit;caret-color:@color;font:inherit;}"

/* default font size for fonts in webview */
#define SETTING_DEFAULT_FONT_SIZE             16
#define SETTING_DEFAULT_MONOSPACE_FONT_SIZE   13
#define SETTING_GUI_FONT_NORMAL               "10pt monospace"
#define SETTING_GUI_FONT_EMPH                 "bold 10pt monospace"
#define SETTING_HOME_PAGE                     "https://rafa_99.gitlab.io/"
#define SEARCH_ENGINE                         "https://searx.info/?preferences=eJxtVcGO4zYM_Zr6YqTodg895VC0KLpAgVl0ZnsVaIlRWEuil5KTcb--VMZOlCCHBBBJkY-PT7SFgp6FMO89JhQIXYDkZ_C4x7T79toFthDqoYO5sOU4BSy47yhqjJmE35f9HxAydhHLkd3-68vrW5fhgBlB7HH_U1eOGHHP2YJ0gnkOJRtOJuHZFBjW247JqJPDCWXPoMcfWXx3ubXLZVEMgT1ZdnjaOZCxc5RhCOgMJk9JO7DW7srJmBM55PzDz79l_C9BNGZtTS1nGunES4XeWMH6zLMxl57yGqbwsqkgqyEtAI3fM_uA_RRg6WGaNO5A4eLhCZPgxI3pIJRGAvuQX_vMVJYWx-J9YRFM5XbbzQ5TG-RmO9af59Yal4iRZemLQMpBx-pa96f3pjolaEgSdI60YGZLEPqIjuABy43QAlKmB_ZqMwPzmFujJ6_DgVxa40h2hKxxcc5kaxTiWCiimqjoufC4cOF85BFSU3cb0NXgqQQY1lsLHJkfEBXiBHLHbgKlvDVMiFLmAZu8WJbIKejw28AqugHFr_Vqw99nLvcamsY-kgjLGvX9DOmueyzM4Y6kgyD2mQ_lDIK9I0GrnC9rgg_NbToINIg21Nfbme7TOGFyt9CNrY3lbcJXAXz6_PmX96Zr53zv8ECJKm0PECFCrY0rKpmHxWPcJpamuDnWKo0msWhBeaqAa-2rZUNf2VX4Yu_ofVDGFhz5X5XQ8-fRf_Tb9D1QGdSFZYVc95O-w_6ezvZxXyi8Mfkxku2EwmdyzxbJBm_jZN0iHxuxqqmvf89Fv2VvH-BmO4KKoP7dSeT2KlrkfCJsiZ5TVkc-NnycGJ48fEgO369ddZjut-xt705hVlPev-jOM79aizrG31--6Bo_CxXUXF_SRVRoshUOlaF_KO4CjWiOXEZc8jX9luxNQCck5tvff2ki7QJFr71emKtfDfvxxVpMxqDP5eILB6OVWCJc9Ku2P9_evr5uQDplGDX1_yVynGg=&q=$0"

#define MAXIMUM_HINTS              500
/* default window dimensions */
#define WIN_WIDTH                  800
#define WIN_HEIGHT                 600

/* if set to 1 neovimb will check if the webextension could be found. */
#define CHECK_WEBEXTENSION_ON_STARTUP 1

/* default download folder */
#define DLPATH "~/Downloads"

/* cookies policy
 * -> always
 * -> origin
 * -> never
 */
#define COOKIES "always"

/* JavaScript */
#define JS on

/* Geolocation
 * -> always
 * -> ask
 * -> never
 */
#define GEOLOCATION "ask"

/* default user agent */
#define USERAGENT "Mozilla/5.0 (X11; Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0"

/* default bar settings */
// background color -/- font color
#define BARCOLOR "background-color:#282828;color:#888888;"
#define INPUTBARCOLOR "background-color:#141414;color:#888888;font:"
