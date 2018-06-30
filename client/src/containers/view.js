import React from 'react';

class View extends React.Component {

  constructor(props){
    super(props)
    this.state = {doctor_id: null}
  }

  showSingleDoctor(doctor_id){
    // assigns state an id
    // when singleView component is displayed
    // it will make fetch from /doctors/:id
    this.setState({doctor_id})
  }

  showIndex(){
    // when state does not have an id,
    // show index view
    // index view will fetch /doctors
    // when displayed
    this.setState({doctor_id: null})
  }

  render(){
    return(
      <div className="container">
        {this.state.doctor_id ? <SingleView showIndex={this.showIndex.bind(this)} /> : <ListView showSingleDoctor={this.showSingleDoctor.bind(this)}/>}
      </div>
    );
  };

};

export default View;