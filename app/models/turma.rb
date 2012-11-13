class Turma < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :professordisciplina
  attr_accessible :aluno_id, :professordisciplina_id
end
