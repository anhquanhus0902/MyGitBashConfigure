######################################################XAO NAU TREN MANG VA TU VIET###############################################################
#											                         _                        	     											#
#											                        | |                            												#
#											__   ___ __   __ _ _ __ | |__   __ _ _   _  __ _ _ __  												#
#											\ \ / / '_ \ / _` | '_ \| '_ \ / _` | | | |/ _` | '_ \ 												#
#											 \ V /| | | | (_| | | | | | | | (_| | |_| | (_| | | | |												#
#											  \_/ |_| |_|\__,_|_| |_|_| |_|\__, |\__,_|\__,_|_| |_|												#
#											                                  | |                  												#
#											                                  |_|                  												#
#################################################################################################################################################

#URL='https://www.accuweather.com/vi/vn/ban-yen-nhan/353996/weather-forecast/353996'

# Color 
normal=$'\e[0m'                           # (works better sometimes)
bold=$(tput bold)                         # make colors bold/bright
red="$bold$(tput setaf 1)"                # bright red text
green=$(tput setaf 2)                     # dim green text
fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
yellow="$bold$fawn"                       # bright yellow text
darkblue=$(tput setaf 4)                  # dim blue text
blue="$bold$darkblue"                     # bright blue text
purple=$(tput setaf 5); magenta="$purple" # magenta text
pink="$bold$purple"                       # bright magenta text
darkcyan=$(tput setaf 6)                  # dim cyan text
cyan="$bold$darkcyan"                     # bright cyan text
gray=$(tput setaf 7)                      # dim white text
darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
white="$bold$gray"                        # bright white text

# Title
echo -en "\033]0;My Bash (ノಠ益ಠ)ノ彡┻━┻\a"

# Weather
curl wttr.in/?0 --silent --max-time 3 > /tmp/now-weather
readarray weather < /tmp/now-weather
rm -f /tmp/now-weather

if [[ "${weather[0]}" == "Weather report:"* ]]
then
	WeatherSuccess=true
	echo "${weather[@]}"
else
	WeatherSuccess=false
	echo "Weather unavailable now"
fi

# ASCII Art 1
tput sc
for ((i = 0; i < 10; ++i)); do
	tput cuu1
done

#if [[ "$WeatherSuccess" == true ]]
#then
#	Column=90
#	tput cup 0 $Column
#else
#	tput cuf $Column
#fi

Column=100
tput cup 2 $Column
echo "${blue}             _.-;;-._"
tput cup 3 $Column
echo "      '-..-'|   ||   |"
tput cup 4 $Column
echo "      '-..-'|_.-;;-._|"
tput cup 5 $Column
echo "      '-..-'|   ||   |"
tput cup 6 $Column
echo "      '-..-'|_.-''-._|"

# ASCII Art 2
cat 'E:\khac\quan\klq\banner1.txt'
echo "${normal}"

# Line1
for ((i = 1; i < 150; ++i)); do
	printf "${fawn}-"
done
echo "${normal}"

# Time
now=$(date)
echo -e "${blue}Current time: $now"

# Greeting
hour=$(date "+%H")
msg=""
if [[ $hour -ge 5 && $hour -lt 11 ]]
then
	msg="Good morning, Quan."
elif [[ $hour -ge 11 && $hour -lt 13 ]]
then
	msg="Lunch is waiting for you."
elif [[ $hour -ge 13 && $hour -lt 18  ]]
then
	msg="Good afternoon, Quan."
elif [[ $hour -ge 18 && $hour -lt 22 ]]
then
	msg="Good evening, Quan."
else
	msg="You should go to bed."
fi
echo -e "$msg ${normal}" 

# Line2
for ((i = 1; i < 150; ++i)); do
	printf "${fawn}-"
done
echo "${normal}"
##############################################################################################################################
# Path to your oh-my-bash installation.
export OSH=/c/Users/ULTIMATE/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# Open .bashrc
alias bashconfig="vim ~/.bashrc"

# Open .oh-my-bash
alias ohmybash="vim ~/.oh-my-bash"

# Open one more Git Bash
alias omgb="e:/khac/quan/Git/git-bash.exe"

# Open Notepad++
alias npps="c:/Program\ Files/Notepad++/notepad++.exe"

# Open VS Code
alias vs="c:/Users/ULTIMATE/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe"

# Re-open Bash
reopen()
{
	omgb & exit
}

# Create a directory and move into that directory
mkcd ()
{
 	 mkdir -p -- "$1" && cd -P -- "$1"
}

cdb()
{
	cd.. && cd -P -- "$1"
}

npp()
{
	npps & echo ""
}

vsc()
{
	vs & echo ""
}
