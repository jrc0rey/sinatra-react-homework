var React = require('react')

var FormComponent = React.createClass({

getInitialState: function(){
		return {movieValue: '', composerValue: ''}
	},

handleClick: function(event){
	event.preventDefault();
	this.props.onItemSubmit(this.state.movieValue, this.state.composerValue)
},




render: function(){
	return(
	<div>
		<form>
			<input placeholder="Movie" value={this.state.movieValue} onChange={this.updateMovie}/>
			<input placeholder="Composer" value={this.state.composerValue} onChange={this.updateComposer}/>
			<button onClick={this.handleClick}>Submit Soundtrack!</button>
		</form>
	</div>	

	)
},

updateMovie: function(event){
	this.setState({movieValue: event.target.value})
},

updateComposer: function(event){
	this.setState({composerValue: event.target.value})
}


})



module.exports = FormComponent;