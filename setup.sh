apt update && apt upgrade -y
apt install libnss libatkmm-1.6 cups libxcomposite libxdamage libxkbcommon libre2 libpangomm-2.48 libsnappy libminizip libxslt libwayland -y
tar -xzvf -C $PREFIX/lib chrome.tar.gz
cp chromium-browser $PREFIX/bin
chmod +x $PREFIX/bin/chromium-browser
cp libgbm.so $PREFIX/lib/
chmod +x $PREFIX/lib/libgbm.so
echo "to run chrome, type \"chromium-browser\""
