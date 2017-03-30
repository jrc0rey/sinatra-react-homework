var React = require('react'),
	ReactDOM = require('react-dom'),
	request = require('superagent')

var MainComponent = React.createClass({
	getInitialState: function(){
		return {data: []}
	},




	






	render: function(){
		return(
		<div>
			<h1>Hello</h1>
		</div>
	  )
	}


})







ReactDOM.render(
	<MainComponent/>, document.getElementById('container')
)