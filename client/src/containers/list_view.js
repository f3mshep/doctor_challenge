import React from 'react';
import DoctorThumbnail from '../components/doctor_thumbnail.js'

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

  getDoctorThumbnails(){
    return this.state.doctors.map((doctor, index) =>
      <DoctorThumbnail doctor={doctor} key={index} />
    )
  }

  componentWillMount(){
    fetchDoctors()
  }

  render(){
    return(
      <div>
        <ul>
          {this.getDoctorThumbnails()}
        </ul>
      </div>
    )
  }
}