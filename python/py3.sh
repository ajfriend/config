# py3.sh -- source to add miniconda (python3) to bash path
#
# Usage: this script should be sourced from your active shell
#
#  $ source py3.sh
#
# Note it is useful to provide a symbolic link to the script from ~/bin when
# ~/bin is on the shell PATH.
#

if [ -d ~/miniconda3/bin ]
then
  export PATH=~/miniconda3/bin:${PATH}
else
  echo "~/miniconda3/bin does not exist."
fi
