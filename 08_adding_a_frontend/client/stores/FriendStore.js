import alt from '../alt';
import FriendActions from '../actions/FriendActions';

class FriendStore {

  constructor() {
    this.bindActions(FriendActions);

    this.state = {
      friends: [],
      friend: []
    }
  }

  onLoad(data) {
    this.setState({
      friends: data
    });
  }

  onLoadFriend(data) {
    this.setState({
      friend: data
    });
  }
}

export default alt.createStore(FriendStore);
