if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hemanthbot69/barbie.git /barbie
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /barbie
fi
cd /barbie
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
