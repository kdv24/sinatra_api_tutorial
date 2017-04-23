import alt from '../alt';
import request from '../scripts/request'

const Request = new request();

class FriendActions {

  load(options) {
    const params = options.params || null;
    const route = '/friends';

    return (dispatch) => {
      Request.get(route, {}, (err, res) => {
        dispatch(res);
      });
    }
  }

  loadFriend(options) {
    const params = options.params || null;
    const route = '/friends/' + params.id;

    return (dispatch) => {
      Request.get(route, {}, (err, res) => {
        dispatch(res);
      });
    }
  }
}

export default alt.createActions(FriendActions);
