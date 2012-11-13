class CreateTipotelefones < ActiveRecord::Migration
  def change
    create_table :tipotelefones do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
