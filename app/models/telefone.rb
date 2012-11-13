class Telefone < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :tipotelefone
  attr_accessible :ddd, :numero, :tipotelefone_id, :aluno_id
end
