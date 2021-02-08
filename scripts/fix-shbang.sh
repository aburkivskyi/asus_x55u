#!/bin/sh
#
# Exit immediately if a command exits with a non-zero status.
set -o errexit	# same as 'set -e'
# Treat unset variables as an error when substituting.
set -o nounset	# same as 'set -u'
set -o pipefail	# the return value of a pipeline is the status of
                # the last command to exit with a non-zero status,
                # or zero if no command exited with a non-zero status
                
# Saving IFS and set it to new
SAVEIFS=$IFS
IFS=$'\n\t'

# Variables started with 'p_' is patterns.
# #!/bin/<bash|fish|zsh>
p_shebang='^#\!(\/usr)?\/bin\/(ba|fi|z)?sh$'

# Functions
fdate() {
	date +[%Y-%m-%dT%H:%M:%S]
}

itsSymLink() {
	if [ $# -ne 1 ]; then
	    printf "%s [E] Arguments number:  %s (must be 1).\n" "$(fdate)" $# >&2 >err.log
		exit 2
	fi
	[ -L $1 ] && echo Y || echo N
}

# Boolean variables
bin_is_symlink="$( itsSymLink /bin )"
detect_shell="$(sed -E 's/.*\/([a-z]+)$/\1/')"

sed -E '1s/([bafiz]{1,2}sh)$/env \1/' -i $FILEPATH

