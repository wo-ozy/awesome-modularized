myawesomemenu = {
    { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "manual", terminal .. " -e man awesome" },
    { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end },
 }
 
 mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                     { "open terminal", terminal }
                                   }
                         })

                         root.buttons(gears.table.join(
                            awful.button({ }, 3, function () mymainmenu:toggle() end),
                            awful.button({ }, 4, awful.tag.viewnext),
                            awful.button({ }, 5, awful.tag.viewprev)
                        ))