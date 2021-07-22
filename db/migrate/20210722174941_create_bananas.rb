class CreateBananas < ActiveRecord::Migration[6.0]
  def change
    create_table :bananas, id: false do |t|
      t.uuid :id, primary_key: true
      t.uuid :apple_id
      t.float :weight

      t.timestamps
    end
  end
end
