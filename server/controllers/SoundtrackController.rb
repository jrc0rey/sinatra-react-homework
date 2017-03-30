class SoundtrackController < ApplicationController

get '/' do 
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json 
	@items = Soundtrack.all
	@items.to_json
end

get '/:id' do
	content_type :json
	id = params[:id]
	@item = Soundtrack.find(id)
	@item.to_json
end

post '/' do
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
	content_type :json
	id = params[:id]
	@soundtrack = Soundtrack.find(id)
	@soundtrack.destroy

	@soundtracks = Soundtrack.all
	@soundtracks.to_json
end

patch '/:id' do
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