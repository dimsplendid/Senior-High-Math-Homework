#include <stdio.h>
#include <stdbool.h>

#define NOB_IMPLEMENTATION
#include "nob.h"

#define FLAG_IMPLEMENTATION
#include "flag.h"

#define SRC "src/"
#define DST "export/"

Nob_File_Paths homeworks = {0};

Cmd cmd = {0};

// commands
bool help = false;
bool build_all = false;
char *build = NULL;
char *watch = NULL;

void typst_flags() {
    cmd_append(&cmd, "--root"     , "."      );
    cmd_append(&cmd, "--font-path", "./fonts");
}

bool build_pdf(const char *file) {
    String_View sv = sv_from_cstr(file);
    String_View stem = sv_chop_by_delim(&sv, '.');
    char *src_path = temp_sprintf(SRC SV_Fmt".typ", SV_Arg(stem));
    char *dst_path = temp_sprintf(DST SV_Fmt".pdf", SV_Arg(stem));

    if (!needs_rebuild1(dst_path, src_path)) {
        nob_log(INFO, "%s is up to date", dst_path);
        return true;
    }

    cmd_append(&cmd, "typst", "compile");
    typst_flags();
    cmd_append(&cmd, src_path);
    cmd_append(&cmd, dst_path);
    
    if (!cmd_run(&cmd)) return false;
    return true;
}

bool build_all_pdfs() {
    for (size_t i = 0; i < homeworks.count; ++i) {
        if (strcmp(homeworks.items[i], ".") == 0) continue;
        if (strcmp(homeworks.items[i], "..") == 0) continue;

        if(!build_pdf(homeworks.items[i])) return false;
    }
    return true;
}

bool watch_typ(char *file) {
    String_View sv = sv_from_cstr(file);
    String_View stem = sv_chop_by_delim(&sv, '.');
    char *src_path = temp_sprintf(SRC SV_Fmt".typ", SV_Arg(stem));
    char *dst_path = temp_sprintf(DST SV_Fmt".pdf", SV_Arg(stem));

    cmd_append(&cmd, "typst", "watch");
    typst_flags();
    cmd_append(&cmd, src_path);
    cmd_append(&cmd, dst_path);

    if (!cmd_run(&cmd)) return false;
    return true;
}

int main(int argc, char **argv) {
    GO_REBUILD_URSELF(argc, argv);

    flag_str_var(&build ,"-build", NULL, "build pdf");
    flag_str_var(&build ,"b", NULL, "build pdf(shorthand)");

    flag_bool_var(&build_all,"-build-all", false, "build all pdfs");

    flag_str_var(&watch ,"-watch", NULL, "watch pdf");
    flag_str_var(&watch ,"w", NULL, "watch pdf(shorthand)");

    flag_bool_var(&help,"-help", false, "print help messages");
    flag_bool_var(&help,"h", false, "print help messages(shorthand)");

    if (!flag_parse(argc, argv)) {
        flag_print_options(stderr);
        flag_print_error(stderr);
        return 1;
    }

    if (help) {
        flag_print_options(stderr);
        return 0;
    }
    
    if(!read_entire_dir(SRC, &homeworks)) return 1;

    if (build_all && !build_all_pdfs()) return 1;

    if (watch && !watch_typ(watch)) return 1;
    
    if (build && !build_pdf(build)) return 1;
   
    return 0;
}
