class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.stringUser :content
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
