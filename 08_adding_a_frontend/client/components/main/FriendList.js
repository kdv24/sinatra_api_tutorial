// Helpers
import React, {Component} from 'react';
import FriendItem from './FriendItem';

export default class FriendList extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <ul>
        {this.props.friends.map((friend, id) => {
          return (
            <FriendItem friend={friend} key={id} />
          )
        })}
      </ul>
    )
  }
}
