// Helpers
import React, {Component} from 'react';
// Stores
import FriendStore from '../stores/FriendStore';
// Actions
import FriendActions from '../actions/FriendActions';
//Components
import FriendList from '../components/main/FriendList';

export default class Main extends Component {
  constructor() {
    super();

    this.state = {
      friends: []
    }

    // Bind functions...
    this.onChange = this.onChange.bind(this);
  }

  componentWillMount() {
    FriendStore.listen(this.onChange);
    FriendActions.load({params: this.props.params});
  }

  onChange() {
    this.setState(FriendStore.getState());
  }

  render() {
    return (
      <div>
        <p>Your Friend's List</p>
        <FriendList friends={this.state.friends} />
      </div>
    );
  }

  componentWillUnmount() {
    FriendStore.unlisten(this.onChange);
  }
}
