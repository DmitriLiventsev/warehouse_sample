class AddTestUser < ActiveRecord::Migration[5.0]
  def change
  	User.create(:email => "root@test.ee", :password => "123123")
  end
end
