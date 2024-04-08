static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    {"", "~/.dwm/dwmblocks/scripts/network.sh", 10, 0},
    {"", "~/.dwm/dwmblocks/scripts/volume.sh", 0, 0},
    {"", "~/.dwm/dwmblocks/scripts/memory.sh", 10, 0},
    {"", "~/.dwm/dwmblocks/scripts/cpu.sh", 5, 0},
    {"", "~/.dwm/dwmblocks/scripts/battery.sh", 0, 0},
    {"", "~/.dwm/dwmblocks/scripts/clock.sh", 5, 0},
};

// sets delimiter between status commands. NULL character ('\0') means no
// delimiter.
static char delim[] = "  |  ";
static unsigned int delimLen = 5;
