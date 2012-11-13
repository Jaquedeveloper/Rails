class Aluno < ActiveRecord::Base
  attr_accessible :matricula, :nome, :sexo
end
