class ResolveUsersEmailUnique < ActiveRecord::Migration[6.1]
  def change
  end
  def up
    change_column :users, :email, :string, null: true, default: nil
  end
  def down
    change_column_null :users, :email, false, SecureRandom.uuid
  end
end
