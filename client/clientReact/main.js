var React = require('react'),
	ReactDOM = require('react-dom'),
	request = require('superagent'),
	FormComponent = require('./form')

var MainComponent = React.createClass({
	getInitialState: function(){
		return {data: []}
	},

	componentDidMount: function(){
		var state = this.state;
		var self = this;
		request.get('http://localhost:9393/soundtracks').end(function(err,data){
			state.data = data.body
			self.setState(state)
		})
		console.log(this.state)
	},

	createPost: function(movie, composer){
		var state = this.state;
		var self = this;
		request.post('http://localhost:9393/soundtracks').type('form').send({movie: movie, composer: composer}).end(function(err,data){
			console.log(data.body)
			state.data = data.body;
			self.setState(state)
		})

	},




	render: function(){
		return(
		
		<div>
			<h1>Great Movie Soundtracks</h1>
			<FormComponent onItemSubmit={this.createPost}/>
			<div>
				{this.state.data.map(function(soundtrack,i){
					return(
					<div key={i}>
						<h2>{soundtrack.movie}</h2>
						 <h4>{soundtrack.composer}</h4>
					</div>
					)
				})}

			</div>
		</div>
	  )
	}


})







ReactDOM.render(
	<MainComponent/>, document.getElementById('container')
)