class CreateApples < ActiveRecord::Migration[6.0]
  def change
    create_table :apples, id: false do |t|
      t.uuid :id, primary_key: true
      t.float :weight

      t.timestamps
    end
  end
end
