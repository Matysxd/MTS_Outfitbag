author 'Matys'
game 'gta5'
fx_version 'cerulean'
lua54 'yes'
version '1.0.0'

shared_scripts {
    'config.lua',
    'config_sv.lua',
	'@ox_lib/init.lua',
}

client_scripts {
    'client/client.lua',
    'config.lua',
    'config_sv.lua',
}
server_scripts {
    'server/server.lua',
    'config.lua',
    'config_sv.lua',
}

dependencies {
    'ox_lib'
}
