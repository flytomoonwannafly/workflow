#!/bin/bash
# Install current version google-chrome and compatible chromedriver
## https://chromedriver.chromium.org/downloads/version-selection

# Install google-chrome
apt-get update
# installing dependencies for google-chrome If the chrome version will change we need update versions for dependencies
apt-get install wget -y
apt-get install libnspr4 libnss3 -y
apt-get install fonts-liberation libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libdrm2 libgbm1 libgtk-3-0 libpango-1.0-0 libxcomposite1 libxdamage1 libxfixes3 libxkbcommon0 libxrandr2 libxshmfence1 xdg-utils -y
#wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_114.0.5735.90-1_amd64.deb
dpkg -i --force-depends google-chrome-stable_114.0.5735.90-1_amd64.deb
rm -f google-chrome-stable_114.0.5735.90-1_amd64.deb

# get compatible version for chromedriver
VERSION_SHORT_CHROME=`echo "$(google-chrome --version)" | sed 's|[^0-9\.]||g;s|\.[0-9]*$||'`
wget -q https://chromedriver.storage.googleapis.com/LATEST_RELEASE_"$VERSION_SHORT_CHROME"
VERSION_CHROMEDRIVER=$(<LATEST_RELEASE_"$VERSION_SHORT_CHROME")
rm -f LATEST_RELEASE_"$VERSION_SHORT_CHROME"

echo $VERSION_SHORT_CHROME
echo $VERSION_CHROMEDRIVER

# Install chromedriver
wget -N https://chromedriver.storage.googleapis.com/"$VERSION_CHROMEDRIVER"/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
mv -f ~/chromedriver /usr/local/bin/chromedriver
chmod 0755 /usr/local/bin/chromedriver

chromedriver -v
google-chrome --version


# Run Codeception Acceptance tests
# https://codeception.com/docs/reference/Commands.html#algolia:p:nth-of-type(1)
#php vendor/bin/codecept run acceptance --colors --steps --env chrome --html

#./vendor/bin/chromedriver --url-base=/wd/hub &
# php vendor/bin/codecept run acceptance --colors --steps --env chrome
#php vendor/bin/codecept run functional --colors --steps
#php vendor/bin/codecept run unit --colors --steps


#php vendor/codeception/codeception/codecept g:feature acceptance checkout
#php vendor/codeception/codeception/codecept gherkin:snippets acceptance checkout.feature
#php vendor/codeception/codeception/codecept dry-run acceptance checkout.feature
#php vendor/codeception/codeception/codecept gherkin:snippets acceptance
#php vendor/codeception/codeception/codecept run acceptance ./tests/acceptance/checkout.feature --html --colors --steps --env chrome

#php vendor/codeception/codeception/codecept run acceptance --html --colors --steps --env chrome
