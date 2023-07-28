shared_script '@es_extended/imports.lua'
fx_version "adamant"
game "gta5"


author "Playooze#4977"
version "1.0"
description "Garage with interior and stashs"


server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "server/*.lua"
}

client_scripts {
    "client/*.lua"
}

shared_script "configuration/*.lua"

dependency "es_extended"
