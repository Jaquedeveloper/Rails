# coding: utf-8

require 'spec_helper'

feature 'gerenciar telefone' do

  scenario 'incluir telefone' do # , :js => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'Celular')
    visit new_telefone_path
    preencher_e_verificar_telefone
  end

  scenario 'alterar telefone' do #, :js => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'Celular')
    telefone = FactoryGirl.create(:telefone, :tipotelefone=>tipotelefone, :aluno=>aluno )
    visit edit_telefone_path(telefone)
    preencher_e_verificar_telefone
  end

   scenario 'excluir telefone' do #, :javascript => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'Celular')
    telefone = FactoryGirl.create(:telefone, :tipotelefone=>tipotelefone, :aluno=>aluno )
    visit telefones_path
    click_link 'Excluir'
  end

   def preencher_e_verificar_telefone
	select 'Celular', :on => 'Tipotelefone'	
	select 'Jaqueline Passos', :on => 'Aluno'
	click_button 'Salvar'
	page.should have_content 'Tipotelefone: Celular'
	page.should have_content 'Aluno: Jaqueline Passos'
   end
end



