class AddApiKeyToUser < ActiveRecord::Migration
  def change
    add_reference :users, :api_key, index: true
    add_foreign_key :users, :api_keys
  end
end
