# Icon and Splash Screen Maker

Make icons and splash screen using SVG, HTML, CSS, and render them in all the sizes you need.

## Getting Started

You need coffeescript:

    npm install -g coffee-script

Install all the node dependancies:

    npm install

You'll also need slimerjs which also requires Firefox:

    brew install slimerjs --without-xulrunner 
    brew cask search firefox

You'll also need an environment variable for slimerjs to find firefox, so put this in your .bashrc

    export SLIMERJSLAUNCHER=~/Applications/Firefox.app/Contents/MacOS/firefox

Slimerjs also only accepts URLs so you have to start an http server:

    python -m SimpleHTTPServer

Then you can create your icons and your splash screens:

    ./generate -i icon.html -s splash.html

## Tips

- Use viewport width for sizing things so that they scale well for each icon size.




