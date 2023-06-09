apt update && apt upgrade -y
pkg install x11-repo
apt install libnss libatkmm-1.6 cups libxcomposite libxdamage libxkbcommon libre2 libpangomm-2.48 libsnappy libminizip libxslt libxrandr libdrm libflac libwebp libopus libwayland -y
wget "https://download1489.mediafire.com/zfcu7p2eu9ag__hc2NSAsrPizsJUTS6r91fk4AVGUS5y2qMMIcVrJjSzqvkE86Rw4ocUmcIDqYhDT2n6vpJBV-Lcc28BYmkcLTq9WjiOSTsC5mh0GYOdH4V9-2sVvvDMBOo45Mpnp9m8qnw_2tPstFdgtYy2bdymAp-4qSF3jV55628/8kbu4daavnkuaf5/chrome.tar%5B1%5D.gz" -O chrome_dl.tar.gz
tar -xzvf chrome_dl.tar.gz -C $PREFIX/lib/
cp libgbm.so $PREFIX/lib/
chmod +x $PREFIX/lib/libgbm.so
ln -s $PREFIX/lib/chromium/chrome $PREFIX/bin/chrome
ln -s $PREFIX/lib/chromium/chrome-wrapper $PREFIX/bin/
ln -s $PREFIX/lib/chromium/chromedriver $PREFIX/bin/
ln -s $PREFIX/lib/chromium/chromium-launcher.sh $PREFIX/bin/chromium-browser
echo "to run chrome, type \"chrome\" or \"chromium-browser\""
