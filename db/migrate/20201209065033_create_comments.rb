class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text,      null:""
      t.references :user,     null:""
      t.references :prototype,   null:""
      t.timestamps
    end
  end
end
