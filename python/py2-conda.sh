# anaconda.sh -- source to add anacoda to bash path
#
# Usage: this script should be sourced from your active shell
#
#  $ source anaconda.sh
#
# Note it is useful to provide a symbolic link to the script from ~/bin when
# ~/bin is on the shell PATH.
#

if [ -d ~/anaconda/bin ]
then
  export PATH=~/anaconda/bin:${PATH}
else
  echo "~/anaconda/bin does not exist."
fi
