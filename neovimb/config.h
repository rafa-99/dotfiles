/**
 * vimb - a webkit based vim like browser.
 *
 * Copyright (C) 2012-2018 Daniel Carl
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see http://www.gnu.org/licenses/.
 */

/* graphical features */
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
#define SETTING_COMPLETION_CSS                "color:#ffffff;background-color:#656565;font:" SETTING_GUI_FONT_NORMAL
#define SETTING_COMPLETION_HOVER_CSS          "background-color:#777777;"
#define SETTING_COMPLETION_SELECTED_CSS       "color:#ffffff;background-color:#888888;"
#define SETTING_INPUT_CSS                     "background-color:#121b1c;color:#b1b9be;font:" SETTING_GUI_FONT_NORMAL
#define SETTING_INPUT_ERROR_CSS               "background-color:#ff7777;font:" SETTING_GUI_FONT_EMPH
#define SETTING_STATUS_CSS                    "color:#b1b9be;background-color:#7B807F;font:" SETTING_GUI_FONT_EMPH
#define SETTING_STATUS_SSL_CSS                "background-color:#7B807F;color:#b1b9be;"
#define SETTING_STATUS_SSL_INVLID_CSS         "background-color:#ff7777;color:#000000;"

/* hide input bar automatically */
#define SETTING_HIDEINPUTBAR on

#define MAXIMUM_HINTS              500
/* default window dimensions */
#define WIN_WIDTH                  800
#define WIN_HEIGHT                 600
/* dark mode */
#define SETTING_DARK_MODE on

/* browser features */
/* if set to 1 neovimb will check if the webextension could be found. */
#define CHECK_WEBEXTENSION_ON_STARTUP 1
/* download folder */
#define SETTING_DOWNLOAD_PATH "~/Downloads"
/* home page */
#define SETTING_HOME_PAGE "https://rafa_99.gitlab.io"
/* search engine */
#define SETTING_SEARCH_ENGINE "https://searx.tuxcloud.net/?preferences=eJx1VU2P2zYQ_TXVRXCRJoeedChSFAkQYIOs0ysxIkcSI5KjDCl72V_foS3Jsjd7sAEOOfPevPmQhoQ9scXY9BiQwVUOQj9Djw2Gw_fnypEGVw4VzIk0-clhwsbMeiy_nirr5bWamF5yc-QZK49pINN8fXo-VhE6jAish-ZdlQb02FDUwBVjnF2KioIKeFYJ2uYfcBErQ1bJJbkTckMgx9-J--ridYgpCxlHvdVk8HQwwGMF5gRBo1EL0BLHRmidWDH0NkiCYfJK2fTb-4-Mxtik1JLyzhJJW3C1R2NBzB0j1pG6dAbG2lhGnYjzEiZDMPiyD5NozJQoDjRCUOpkDVIU-x_y6iJTOQzQMpS_JcyZXMfgwU0DCANtUZLZcRJ5iltrUyuCY1rcfPbohUydGEJ0Ukizp1KUsCesbdxbe5sctEsETETu7vpsR_tzpoR3kXQfaVaqs-7C_yFJP0erL6F70RtiegwodYw25VdmyqVvdlZkOlvzK-gVI2SAnawxAafpIUppjBa5X5KcQ5yE1bArQO57qSJjSLekAgjNO6WIeoe1-Oba00kmZAd85bGyurZdwa3L3wL8INMKhCl7Ck46co8mIyPk7gh4-oE43qkxjbW3zLR2Dk0YGCeKt_AR_wvg916dYSqqri-clfaTtikv4n137IVZkzsRvJ6LtS6bpKWgpU-3buW5zT36uDA1s8Gwh_p5hpDe0humaZfSdTiE9arsir6Vo2MbRgv6nlCyFIDzWwlu3hkGosfuFADW-GZDFHFuGtkAr5pjY7KO8WbopazJely1ub5fsy3gLdF4K0yF4X6Raa0P6bRDnBA5zS3uTKPVI8SdipthJb0Zblvqw4c_X9bzbX9Obhbc2Pxr_cHZEdVAacRcPJ7Rdepz6Ig9FLmL7UmaUv2lNUrsv58-yy4_s024ZbGG-3Q8fn1eb8XvUxnS66Wcjgyy61h9__ZF3sgAIotVoGyQ57IlmZy7MCizV74i-vopy_IVcLKmK5k_FJj_Aek2mSM=&q=$0"
/* user agent */
#define SETTING_USER_AGENT "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Safari/605.1.15 "
/* geolocation-accept allowed values always, ask, never */
#define SETTING_GEOLOCATION_ACCEPT "never"
/* cookie-accept allowed values always, origin, never */
#define SETTING_COOKIE_ACCEPT "always"
/* javascript */
#define SETTING_JAVASCRIPT_ACCEPT on
/* download command */
#define SETTING_DOWNLOAD_COMMAND "/bin/sh -c \"curl -sLJOC - -e '$neovimb_URI' %s\""

#define SETTING_HINT_KEYS "0123456789"

/* This status indicator is only shown if "status-bar-show-settings" is
 * enabled.
 * The CHAR_MAP(value, internalValue, outputValue, valueIfNotMapped) is a
 * little workaround to translate internal used string value like for
 * GET_CHAR(c, "cookie-accept") which is one of "always", "origin" or "never"
 * to those values that should be shown on statusbar.
 * The STATUS_VARAIBLE_SHOW is used as argument for a printf like function. So
 * the first argument is the output pattern. */
/*
#define STATUS_VARAIBLE_SHOW "js: %s, cookies: %s, hint-timeout: %d", \
    GET_BOOL(c, "scripts") ? "on" : "off", \
    GET_CHAR(c, "cookie-accept"), \
    GET_INT(c, "hint-timeout")
*/
#define COOKIE GET_CHAR(c, "cookie-accept")
#define CHAR_MAP(v, i, m, d) (strcmp(v, i) == 0 ? m : (d))
#define STATUS_VARAIBLE_SHOW "%c%c%c%c%c%c%c%c", \
    CHAR_MAP(COOKIE, "always", 'A', CHAR_MAP(COOKIE, "origin", '@', 'a')), \
    GET_BOOL(c, "dark-mode") ? 'D' : 'd', \
    vb.incognito ? 'E' : 'e', \
    GET_BOOL(c, "images") ? 'I' : 'i', \
    GET_BOOL(c, "html5-local-storage") ? 'L' : 'l', \
    GET_BOOL(c, "stylesheet") ? 'M' : 'm', \
    GET_BOOL(c, "scripts") ? 'S' : 's', \
    GET_BOOL(c, "strict-ssl") ? 'T' : 't'
