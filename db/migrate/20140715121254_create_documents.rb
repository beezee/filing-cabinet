class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :attachment
      t.timestamps
    end
  end
end
