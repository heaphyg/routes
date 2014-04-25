class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.belongs_to :post
      t.string :message

      t.timestamps
    end
  end
end
