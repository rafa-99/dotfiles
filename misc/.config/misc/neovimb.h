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
#define SEARCH_ENGINE                         "https://searx.tuxcloud.net/?preferences=eJx1VU2P2zYQ_TXVRXCRJoeedChSFAkQYIOs0ysxIkcSI5KjDCl72V_foS3Jsjd7sAEOOfPevPmQhoQ9scXY9BiQwVUOQj9Djw2Gw_fnypEGVw4VzIk0-clhwsbMeiy_nirr5bWamF5yc-QZK49pINN8fXo-VhE6jAish-ZdlQb02FDUwBVjnF2KioIKeFYJ2uYfcBErQ1bJJbkTckMgx9-J--ridYgpCxlHvdVk8HQwwGMF5gRBo1EL0BLHRmidWDH0NkiCYfJK2fTb-4-Mxtik1JLyzhJJW3C1R2NBzB0j1pG6dAbG2lhGnYjzEiZDMPiyD5NozJQoDjRCUOpkDVIU-x_y6iJTOQzQMpS_JcyZXMfgwU0DCANtUZLZcRJ5iltrUyuCY1rcfPbohUydGEJ0Ukizp1KUsCesbdxbe5sctEsETETu7vpsR_tzpoR3kXQfaVaqs-7C_yFJP0erL6F70RtiegwodYw25VdmyqVvdlZkOlvzK-gVI2SAnawxAafpIUppjBa5X5KcQ5yE1bArQO57qSJjSLekAgjNO6WIeoe1-Oba00kmZAd85bGyurZdwa3L3wL8INMKhCl7Ck46co8mIyPk7gh4-oE43qkxjbW3zLR2Dk0YGCeKt_AR_wvg916dYSqqri-clfaTtikv4n137IVZkzsRvJ6LtS6bpKWgpU-3buW5zT36uDA1s8Gwh_p5hpDe0humaZfSdTiE9arsir6Vo2MbRgv6nlCyFIDzWwlu3hkGosfuFADW-GZDFHFuGtkAr5pjY7KO8WbopazJely1ub5fsy3gLdF4K0yF4X6Raa0P6bRDnBA5zS3uTKPVI8SdipthJb0Zblvqw4c_X9bzbX9Obhbc2Pxr_cHZEdVAacRcPJ7Rdepz6Ig9FLmL7UmaUv2lNUrsv58-yy4_s024ZbGG-3Q8fn1eb8XvUxnS66Wcjgyy61h9__ZF3sgAIotVoGyQ57IlmZy7MCizV74i-vopy_IVcLKmK5k_FJj_Aek2mSM=&q=$0"

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
