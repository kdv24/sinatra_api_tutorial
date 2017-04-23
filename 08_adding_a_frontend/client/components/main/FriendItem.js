// Helpers
import React, {Component} from 'react';
import {Link} from 'react-router';

export default class FriendItem extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    let firstName = this.props.friend.first_name;
    let lastName = this.props.friend.last_name;
    let phone = this.props.friend.phone;

    return (
      <Link to={'/friends/' + this.props.friend.id}>
        <li>
          {`${lastName}, ${firstName}`}
        </li>
      </Link>
    )
  }
}
