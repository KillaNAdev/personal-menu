fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'KillaNA'
description 'Personal Menu'
version '1.0.0'

client_scripts {
    '@menuv/menuv.lua',
    'client/*'
}

server_scripts {
'server/*'
}

dependencies {
    'menuv'
}