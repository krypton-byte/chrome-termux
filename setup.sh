apt update && apt upgrade -y
pkg install x11-repo
apt install libnss libatkmm-1.6 cups libxcomposite libxdamage libxkbcommon libre2 libpangomm-2.48 libsnappy libminizip libxslt libwayland -y
tar -xzvf chrome.tar.gz -C $PREFIX/lib/
cp libgbm.so $PREFIX/lib/
chmod +x $PREFIX/lib/libgbm.so
ln -s $PREFIX/lib/chromium/chrome $PREFIX/bin/chrome
ln -s $PREFIX/lib/chromium/chrome-wrapper $PREFIX/bin/
ln -s $PREFIX/lib/chromium/chromedriver $PREFIX/bin/
ln -s $PREFIX/lib/chromium/chromium-launcher.sh $PREFIX/bin/chromium-browser
echo "to run chrome, type \"chrome\" or \"chromium-browser\""
