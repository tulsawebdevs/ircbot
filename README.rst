=====
Setup
=====

Requirements
============
* ruby 1.9+

Getting the Code
================

Grab the source from Github using::

    git clone git://github.com/tulsawebdevs/ircbot.git

Create an RVM
=============

http://beginrescueend.com/

Installing Dependencies
=======================

Use rvm and install required libraries::

    rvm use ruby-1.9.2-p180
    gem install cinch

=======
Running
=======

Run a local irc server like http://ngircd.barton.de/

Run the bot::

    rvm use ruby-1.9.2-p180
    ruby tulsabot.rb
