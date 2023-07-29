class Addconfirmable < ActiveRecord::Migration[7.0]
  def change
  end

  def self.up
    change_table(:users) do |t|
      t.confirmable
    end
  end
end
