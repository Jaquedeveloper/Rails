# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :telefone do
    ddd "MyString"
    numero "MyString"
    aluno nil
    tipotelefone nil
  end
end
