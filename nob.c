#include <stdio.h>
#include <stdbool.h>

#define NOB_IMPLEMENTATION
#include "nob.h"

#define SRC "src/"
#define DST "export/"

Cmd cmd = {0};

char *homeworks[] = {
    "homework-1",
};

bool build_pdfs() {
    for (size_t i = 0; i < ARRAY_LEN(homeworks); ++i) {
        char *file = homeworks[i];
        char *src_path = temp_sprintf(SRC"%s.typ", file);
        char *dst_path = temp_sprintf(DST"%s.pdf", file);
        if (!needs_rebuild1(dst_path, src_path)) {
            nob_log(INFO, "%s is up to date", dst_path);
            continue;
        }
        cmd_append(&cmd, "typst"      , "compile");
        cmd_append(&cmd, "--root"     , "."      );
        cmd_append(&cmd, "--font-path", "./fonts");
        cmd_append(&cmd, src_path);
        cmd_append(&cmd, dst_path);
        if (!cmd_run(&cmd)) return false;
    }
    return true;
}

int main(int argc, char **argv) {
    GO_REBUILD_URSELF(argc, argv);
    if (!build_pdfs()) return 1;
    return 0;
}
