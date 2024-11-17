//Modify this file to change what commands output to your statusbar, and recompile using the make command.




static const Block blocks[] = {
    /*Icon*/    /*Command*/                                                                /*Update Interval*/    /*Update Signal*/
    {"CPU: ", "mpstat | awk '/all/ {printf(\"%d%%\", 100 - $NF)}'",                                1,                     0},
    {"Mem: ",   "free | awk '/Mem:/ {use=int($3/$2 * 100 + 0.5); printf(\"%d%%\", use)}'",         1,                     0},
    {"",   "~/programs/blocks/battery.sh",                                                         1,                     0},
    {"",        "date '+%m/%d/%Y %I:%M %p'",                                                       1,                     0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;

