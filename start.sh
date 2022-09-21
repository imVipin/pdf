if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/imVipin/pdf4u.git /pdf4u
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /pdf4u
fi
cd /pdf4u
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
