shared_script '@es_extended/imports.lua'
fx_version "adamant"
game "gta5"


author "Playooze"
version "1.0"
description "Garage with interior and stash"


server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "server/*.lua"
}

client_scripts {
    "client/*.lua"
}

shared_script "configuration/*.lua"

dependency "es_extended"
dependency "cd_drawtextui"
