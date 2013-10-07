class CreateNguoiDungs < ActiveRecord::Migration
  def change
    create_table :nguoi_dungs do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
