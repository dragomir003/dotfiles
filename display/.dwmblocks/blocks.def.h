
static const Block blocks[] = {
    /*Icon*/ /*Command*/	 	                 /*Update Interval*/	/*Update Signal*/
    {" 🐧 ", "~/.scripts/dwmblocks/kernel",	        360,	         	 2},

    {" 🔺 ", "~/.scripts/dwmblocks/upt",		 60,		         2},

    {" 📦 ", "~/.scripts/dwmblocks/pacupdate",  	360,		         9},
	
    {" 💻 ", "~/.scripts/dwmblocks/memory",	          6,		         1},

    {" 🕑 ", "~/.scripts/dwmblocks/clock",	     	 60,	                 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static int delimLen = 5;
