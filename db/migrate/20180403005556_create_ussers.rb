class CreateUssers < ActiveRecord::Migration[5.1]
  def change
    create_table :ussers do |t|

      t.timestamps
    end
  end
end
