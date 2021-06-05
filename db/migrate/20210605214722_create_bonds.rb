class CreateBonds < ActiveRecord::Migration[6.0]
  def change
    create_table :bonds do |t|
      t.bigint :user_id
      t.bigint :friend_id
      t.string :state

      t.timestamps
    end
  end
end
