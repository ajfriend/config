# py3.sh -- source to add miniconda (python3) to bash path
#
# Usage: this script should be sourced from your active shell
#
#  $ source py3.sh
#
# Note it is useful to provide a symbolic link to the script from ~/bin when
# ~/bin is on the shell PATH.
#

if [[ -d ~/anaconda3/bin ]]
then
  export PATH=~/anaconda3/bin:${PATH}
else
  echo "~/anaconda3/bin does not exist."
fi
