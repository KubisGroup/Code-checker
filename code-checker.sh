#!/bin/bash
## = = = VERSION source = = =
source "$0.ver";
DELAY=10;
## = = = SETTINGS = = =
CURRENT_PROGRESS=0
width=$(tput cols);
height=$(tput lines);
BOLD=`tput bold`; 	#Start bold text
UNDERLINE_START=`tput smul`; 	#Start underlined text
UNDERLINE_END=`tput rmul`; 	#End underlined text
REVERSE=`tput rev`; 	#Start reverse video
BLINK=`tput blink`; 	#Start blinking text
INVISIBLE=`tput invis`; 	#Start invisible text
STANDOUT_START=`tput smso`; 	#Start "standout" mode
STANDOUT_END=`tput rmso`; 	#End "standout" mode
OFF_ATR=`tput sgr0`; 	#Turn off all attributes
#setaf <value> 	Set foreground color
#setab <value> 	Set background color

# = = = FOREGROUND COLOR = = =
BLACK=`tput setaf 0`;
RED=`tput setaf 1`;
GREEN=`tput setaf 2`;
ORANGE=`tput setaf 3`; #LOGO KUBIS
STEELBLUE=`tput setaf 4`; #LOGO GROUP
PURPLE=`tput setaf 5`; #LINES
BLUE=`tput setaf 6`; #notification
WHITE=`tput setaf 7`; #NORMAL TEXT
NO_COLOR=`tput setaf 8`; #NO SET
RESET_COLOR=`tput setaf 9`; #RESER COLOR TEXT
# = = = BACKGROUND COLOR = = =
BG_BLACK=`tput setab 0`;
BG_RED=`tput setab 1`;
BG_GREEN=`tput setab 2`;
BG_ORANGE=`tput setab 3`; #LOGO KUBIS
BG_STEELBLUE=`tput setab 4`; #LOGO GROUP
BG_PURPLE=`tput setab 5`; #LINES
BG_BLUE=`tput setab 6`; #notification
BG_WHITE=`tput setab 7`; #NORMAL TEXT
BG_NO_COLOR=`tput setab 8`; #NO SET
BG_RESET_COLOR=`tput setab 9`; #RESER COLOR TEXT

# = = = FUNCTIONS = = =
function logo()
{
	echo "${ORANGE} ▄    ▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄      ";
	echo "${ORANGE}▐░▌  ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ";
	echo "${ORANGE}▐░▌ ▐░▌ ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀      ";
	echo "${ORANGE}▐░▌▐░▌  ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌               ";
	echo "${ORANGE}▐░▌░▌   ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄      ";
	echo "${ORANGE}▐░░▌    ▐░▌       ▐░▌▐░░░░░░░░░░▌      ▐░▌     ▐░░░░░░░░░░░▌     ";
	echo "${ORANGE}▐░▌░▌   ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌     ▐░▌      ▀▀▀▀▀▀▀▀▀█░▌     ";
	echo "${ORANGE}▐░▌▐░▌  ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌               ▐░▌     ";
	echo "${ORANGE}▐░▌ ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄█░█▄▄▄▄  ▄▄▄▄▄▄▄▄▄█░▌     ";
	echo "${ORANGE}▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ";
	echo "${ORANGE} ▀    ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀      ";
	echo "                                                                 ";
	echo "${STEELBLUE} ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄ ";
	echo "${STEELBLUE}▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌";
	echo "${STEELBLUE}▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌";
	echo "${STEELBLUE}▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌";
	echo "${STEELBLUE}▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌"
	echo "${STEELBLUE}▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌"
	echo "${STEELBLUE}▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀█░█▀▀ ▐░▌       ▐░▌▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ "
	echo "${STEELBLUE}▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          "
	echo "${STEELBLUE}▐░█▄▄▄▄▄▄▄█░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          "
	echo "${STEELBLUE}▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          "
	echo "${STEELBLUE} ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀           "
	echo "${PURPLE}================================================================================${WHITE}"
}

function licence()
{
	printf "MIT License\n";
	echo "";
	printf "Copyright (c) [2017] Jan Kubka (${ORANGE}Kubis ${STEELBLUE}Group${WHITE}, Inc.)\n";
	echo "";
	printf "Permission is hereby granted, free of charge, to any person obtaining a copy\n";
	printf "of this software and associated documentation files (the \"Software\"), to deal\n";
	printf "in the Software without restriction, including without limitation the rights\n";
	printf "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n";
	printf "copies of the Software, and to permit persons to whom the Software is\n";
	printf "furnished to do so, subject to the following conditions:\n";
	echo "";
	printf "The above copyright notice and this permission notice shall be included in all\n";
	printf "copies or substantial portions of the Software.\n";
	echo "";
	printf "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n";
	printf "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n";
	printf "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n";
	printf "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n";
	printf "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n";
	printf "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n";
	printf "SOFTWARE..\n";
}

## = = = PROGRAM = = =
tput clear;
logo;
# Check if user is root
if [ $(id -u) != "0" ]; then
	# = = = GET ROOT = = =
	echo "${ORANGE}This program run only as ${RED}${BOLD}${UNDERLINE_START}ROOT${UNDERLINE_END}${OFF_ATR}${ORANGE} please add your password and run again${WHITE}";
	sudo su -c $0;
else
# I'm root
	if [[ $# -eq 0 ]] ; then
		printf "${0} (Nette code-checker.sh) v.1.0.${VERSION}\n";
		printf "Copyright (C) 2017 ${ORANGE}Kubis ${STEELBLUE}Group${WHITE}, Inc.\n";
		echo "${PURPLE}================================================================================${WHITE}"
		licence;
		echo "${PURPLE}================================================================================${WHITE}"
		printf "This is free software: you are free to change and redistribute it.\n";
		printf "There is NO WARRANTY, to the extent permitted by law.\n";
		echo "${PURPLE}================================================================================${WHITE}"
		printf "Try '${ORANGE}sudo $0 ${BLUE}/path/to/nette/app ${WHITE}' for use code-checker.\n";
		printf "Delay: default use is 60sec\n";
		echo "${PURPLE}================================================================================${WHITE}"
		printf "${ORANGE}Full documentation at: ${WHITE}<${GREEN}http://www.kubisgroup.org/software/bash/nette_code-checker${WHITE}>\n";
	else
		checkedRuns=1;
		while [ true ]; do
			tput clear;
			logo;
			sudo php ./vendor/bin/code-checker -d $1 -f -l;
			echo "${PURPLE}================================================================================${WHITE}";
			echo "Set chmod 777 to $1 path";
			sudo chmod -R 777 $1;
			echo "${PURPLE}================================================================================${WHITE}";
			echo "Doctrine database create/update";
			sudo php ./index.php  orm:schema-tool:update;
			echo "${PURPLE}================================================================================${WHITE}";
			printf "\nCode checker was be run in $checkedRuns loops....\nWaiting for loop delay ($DELAY)...\n\n";
			echo "${PURPLE}================================================================================${WHITE}";
			printf "${0} (Nette code-checker.sh) v.1.0.${VERSION}\n";
			printf "Copyright (C) 2017 ${BOLD}${ORANGE}Kubis ${STEELBLUE}Group${WHITE}${OFF_ATR}, Inc.\n";
			echo "${PURPLE}================================================================================${WHITE}";
			printf "For exit try ${ORANGE}${BOLD}${UNDERLINE_START}CTRL+C${UNDERLINE_END}${OFF_ATR}${WHITE}\n";
			printf "Delay: default use is 60sec\n";
			echo "${PURPLE}================================================================================${WHITE}";
			printf "${ORANGE}Full documentation at: ${WHITE}<${GREEN}http://www.kubisgroup.org/software/bash/nette_code-checker${WHITE}>\n";
			echo "${PURPLE}================================================================================${WHITE}";
			licence;
			sleep $DELAY;
			((checkedRuns++));
		done
	fi

fi
