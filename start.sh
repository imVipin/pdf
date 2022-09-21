if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/imVipin/pdf.git /pdf
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /pdf
fi
cd /pdf
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
