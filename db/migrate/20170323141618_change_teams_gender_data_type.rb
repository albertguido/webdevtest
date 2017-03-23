class ChangeTeamsGenderDataType < ActiveRecord::Migration
  def change
  	change_column(:teams, :gender, :string)
  end
end
