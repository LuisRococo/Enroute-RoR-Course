class RemoveScreenWidthProperty < ActiveRecord::Migration[6.1]
  def change
    remove_column :computers, :screen_width
  end
end
