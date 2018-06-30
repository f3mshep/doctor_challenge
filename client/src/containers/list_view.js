import React from 'react';

class ListView extends React.Component{
  constructor(props){
    super(props)
    this.state.doctors = {
      doctors: null
    }
  }

  fetchDoctors(){
    fetch(`/doctors`, {
      accept: "application/json"
    })
    .then(response => response.json())
    .then(doctors => this.setState({doctors}))
  }

  componentWillMount(){
    fetchDoctors()
  }

  render(){
    return(
      <div>
        <ul>
        </ul>
      </div>
    )
  }
}