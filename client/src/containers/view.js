import React from 'react';

class View extends React.Component {

  constructor(props){
    super(props)
    this.state = {list: false}
  }

  render(){
    return(
      <div className="container">
        {this.state.list ? <SingleView/> : <ListView/>}
      </div>
    );
  };

};

export default View;