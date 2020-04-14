class CreateBells < ActiveRecord::Migration[5.2]
  def change
    create_table :bells do |t|
      t.text :content

      t.timestamps
    end
  end
end
