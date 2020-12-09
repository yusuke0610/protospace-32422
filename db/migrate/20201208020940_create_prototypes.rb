class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.string :title ,      null:""
      t.text :catch_copy,    null:""
      t.text :concept,       null:""
      t.references :user,    foreign_key: true
    end
  end
end
