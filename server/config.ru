require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/SoundtrackController'

require './models/SoundtrackModel'

map ('/') {run ApplicationController}
map ('/soundtracks') {run SoundtrackController}