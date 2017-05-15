class AddSpamToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :spam, :boolean
  end
end
