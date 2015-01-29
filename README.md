# Meteor Icon and Splash Screen Maker

Make icons and splash screen using SVG, HTML, CSS, and render them in all the sizes you need.

It is such a hassle to make icons and splash screens in all the appropriate sizes for ever mobile deivce. This project is an attempt to alleviate some of that pain for meteor developers.

I've started with the mobile web app icon and splash screen sizes for iOS 8 [given in this gist](https://gist.github.com/hpoydar/338ac838516b4951aadf). I have not verified all of these however -- it is a huge pain in the ass.

I would like this project to support all platforms, not just iOS. I just don't have an Android to test with.

## How it works

In `private/IconSplashMaker` there is a script that looks at your `icon` and `splash` routes, renders them in a Firefox browser window using SlimerJS, and takes the appropriate screenshots. I am using SlimerJS instead of PhantomJS because PhantomJS does not yet support CSS viewport height and width (`vw` and `vh`) which are crucial for generating icons and splash screen.

You'll also notice quite a delay between each snapshot. This is to allow the browser time to load images.

## Getting Started

You will need the coffeescript commandline interpreter.

    npm install -g coffee-script

The change directory to the IconSplashMaker directory and install the NPM dependancies.

    cd private/IconSplashMaker
    npm install

You'll also need SlimerJS which also requires Firefox. If you don't already have Firefox installed, you can install it using `brew cask`.

    brew install slimerjs --without-xulrunner 
    brew cask install firefox

You'll also need an environment variable for SlimerJS to find Firefox. You may want to put this in your `.bashrc`.

If you are using cask to install Firefox:

    export SLIMERJSLAUNCHER=~/Applications/Firefox.app/Contents/MacOS/firefox
    
Or if you have a standard Firefox installation in your /Applications folder:

    export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox
    
If your version of Firefox is greater then version 34 you will need to update the following ini file:

    /usr/local/Cellar/slimerjs/0.9.4/libexec/application.ini
    
Change the following:

    FROM: MaxVersion=34.*
    TO: MaxVersion=36.*

Make sure your Meteor server is up and running, and generate all your icons and splash screens:

    coffee generateIconSplash.coffee

## To do

- mobile-config.js sizes
- android sizes
- verify everything is correct
