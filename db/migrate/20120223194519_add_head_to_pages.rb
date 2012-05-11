#encoding: utf-8
class AddHeadToPages < ActiveRecord::Migration
  def change
    add_column :pages, :head, :string, :default => 'Воронеж лес:деревянные дома из оцилиндрованное бревно, пиломатериал'
  end
end
