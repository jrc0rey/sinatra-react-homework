class SoundtrackController < ApplicationController

options '*' do
  response.headers['Allow'] = 'HEAD,GET,POST,PUT,PATCH,DELETE,OPTIONS'

  # Needed for AngularJS
  response.headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
  response['Access-Control-Allow-Origin'] = '*'

  'cool'
end



get '/' do 
	response['Access-Control-Allow-Origin'] = '*'
	
	content_type :json 
	@items = Soundtrack.all
	@items.to_json
end

get '/:id' do
	response['Access-Control-Allow-Origin'] = '*'
	
	content_type :json
	id = params[:id]
	@item = Soundtrack.find(id)
	@item.to_json
end

post '/' do
	response['Access-Control-Allow-Origin'] = '*'
	
	content_type :json
	@soundtrack = Soundtrack.new
	@soundtrack.movie = params[:movie]
	@soundtrack.composer = params[:composer]
	@soundtrack.year = params[:year]
	@soundtrack.save

	@soundtracks = Soundtrack.all
	@soundtracks.to_json
end

delete '/:id' do
	response['Access-Control-Allow-Origin'] = '*'

	content_type :json
	id = params[:id]
	@soundtrack = Soundtrack.find(id)
	@soundtrack.destroy

	@soundtracks = Soundtrack.all
	@soundtracks.to_json
end

patch '/:id' do
	response['Access-Control-Allow-Origin'] = '*'

	content_type :json
	id = params[:id]
	@soundtrack = Soundtrack.find(id)
	@soundtrack.movie = params[:movie]
	@soundtrack.composer = params[:composer]
	@soundtrack.year = params[:year]
	@soundtrack.save

	@soundtracks = Soundtrack.all
	@soundtracks.to_json
end


end