apt update && apt upgrade -y
pkg install x11-repo
apt install libnss libatkmm-1.6 cups libxcomposite libxdamage libxkbcommon libre2 libpangomm-2.48 libsnappy libminizip libxslt libwayland -y
tar -xzvf chrome.tar.gz -C $PREFIX/lib/
cp chromium-browser $PREFIX/bin
chmod +x $PREFIX/bin/chromium-browser
cp libgbm.so $PREFIX/lib/
chmod +x $PREFIX/lib/libgbm.so
ln -s $PREFIX/lib/chromium/chrome $PREFIX/bin/chrome
echo "to run chrome, type \"chrome\" or \"chromium-browser\""
