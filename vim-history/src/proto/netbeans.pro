/* netbeans.c */
extern void netbeans_Xt_connect __ARGS((void *context));
extern void netbeans_gtk_connect __ARGS((void));
extern void netbeans_w32_connect __ARGS((void));
extern void messageFromNetbeansW32 __ARGS((void));
extern int isNetbeansBuffer __ARGS((buf_T *bufp));
extern int isNetbeansModified __ARGS((buf_T *bufp));
extern void netbeans_end __ARGS((void));
extern void netbeans_startup_done __ARGS((void));
extern void netbeans_frame_moved __ARGS((int new_x, int new_y));
extern void netbeans_file_opened __ARGS((char *filename));
extern void netbeans_file_closed __ARGS((buf_T *bufp));
extern void netbeans_inserted __ARGS((buf_T *bufp, linenr_T linenr, colnr_T col, int oldlen, char_u *txt, int newlen));
extern void netbeans_removed __ARGS((buf_T *bufp, linenr_T linenr, colnr_T col, long len));
extern void netbeans_unmodified __ARGS((buf_T *bufp));
extern void netbeans_button_release __ARGS((int button));
extern void netbeans_keycommand __ARGS((int key));
extern void netbeans_save_buffer __ARGS((buf_T *bufp));
extern void netbeans_deleted_all_lines __ARGS((buf_T *bufp));
extern int netbeans_is_guarded __ARGS((linenr_T top, linenr_T bot));
extern void netbeans_draw_multisign_indicator __ARGS((int row));
extern void netbeans_draw_multisign_indicator __ARGS((int row));
extern void netbeans_gutter_click __ARGS((linenr_T lnum));
/* vim: set ft=c : */
