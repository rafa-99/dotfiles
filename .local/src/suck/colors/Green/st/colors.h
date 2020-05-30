const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0A1515", /* black   */
  [1] = "#20936F", /* red     */
  [2] = "#4DA779", /* green   */
  [3] = "#307588", /* yellow  */
  [4] = "#289789", /* blue    */
  [5] = "#56A395", /* magenta */
  [6] = "#6ACC93", /* cyan    */
  [7] = "#c0e5c7", /* white   */

  /* 8 bright colors */
  [8]  = "#86a08b",  /* black   */
  [9]  = "#20936F",  /* red     */
  [10] = "#4DA779", /* green   */
  [11] = "#307588", /* yellow  */
  [12] = "#289789", /* blue    */
  [13] = "#56A395", /* magenta */
  [14] = "#6ACC93", /* cyan    */
  [15] = "#c0e5c7", /* white   */

  /* special colors */
  [258] = "#0A1515", /* background */
  [257] = "#c0e5c7", /* foreground */
  [256] = "#c0e5c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 256;
 unsigned int defaultrcs= 256;
