class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :ddd
      t.string :numero
      t.references :aluno
      t.references :tipotelefone

      t.timestamps
    end
    add_index :telefones, :aluno_id
    add_index :telefones, :tipotelefone_id
  end
end
