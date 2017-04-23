class FriendSerializer

  def initialize(friend)
    @friend = friend
  end

  def as_json(*)
    data = {
      id: @friend.id.to_s,
      first_name: @friend.first_name.to_s,
      last_name: @friend.last_name.to_s,
      phone: @friend.phone.to_s
    }

    data[:errors] = @friend.errors if @friend.errors.any?
    data
  end

end
