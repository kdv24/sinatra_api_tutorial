// Helpers
import React, {Component} from 'react';
// Stores
import FriendStore from '../stores/FriendStore';
// Actions
import FriendActions from '../actions/FriendActions';

export default class Friend extends Component {
  constructor() {
    super();

    this.state = {
      friend: {}
    }

    // Bind functions...
    this.onChange = this.onChange.bind(this);
  }

  componentWillMount() {
    FriendStore.listen(this.onChange);
    FriendActions.loadFriend({params: this.props.params});
  }

  onChange() {
    this.setState(FriendStore.getState());
  }

  render() {
    return (
      <div>
        <h2>{`${this.state.friend.first_name} ${this.state.friend.last_name}`}</h2>
        <p>{`phone: ${this.state.friend.phone}`}</p>
      </div>
    )
  }

  componentWillUnmount() {
    FriendStore.unlisten(this.onChange);
  }
}
