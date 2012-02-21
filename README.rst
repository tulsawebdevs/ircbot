=====
Setup
=====

Requirements
============
* ruby 1.9+

Install RVM
===========

http://beginrescueend.com/

Installing Dependencies
=======================

Use rvm and install bundler::

    rvm install 1.9.2
    rvm use ruby-1.9.2-p180
    gem install bundler

Getting the Code
================

Grab the source from Github using::

    git clone git://github.com/tulsawebdevs/ircbot.git

`cd` into the project directory and fetch dependencies::

    cd ircbot
    bundle install

=======
Running
=======

Run a local irc server like http://ngircd.barton.de/

Run the bot::

    rvm use ruby-1.9.2-p180
    ruby tulsabot.rb
