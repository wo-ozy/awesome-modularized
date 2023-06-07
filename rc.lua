-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
gears = require("gears")
awful = require("awful")
require("awful.autofocus")
wibox = require("wibox")
beautiful = require("beautiful")
naughty = require("naughty")
menubar = require("menubar")
hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")

require("theme/init")
require("base/error_handler")
require("base/definitions")
require("menu")
require("base/keys")
require("bar/init")
require("base/rules")
require("titlebar/init")
require("base/signals")
