# load_anaconda.sh -- source to add anacoda to bash path

if [ -d ~/anaconda/bin ]
then
  export PATH=~/anaconda/bin:${PATH}
else
  echo "~/anaconda/bin does not exist."
fi
