class AddQuotesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.column :content, :string
      t.column :author, :string
    end
  end
end
