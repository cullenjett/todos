require 'rails_helper'

RSpec.describe Todo, :type => :model do
  describe "#user=" do
    it 'assigns owner_email from the user passed in email' do
      user = User.new('person@example.com')
      todo = Todo.new
      todo.user = user

      expect(todo.owner_email).to eq('person@example.com')
    end
  end
end
