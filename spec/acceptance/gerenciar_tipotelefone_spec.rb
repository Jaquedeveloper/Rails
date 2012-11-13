# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipotelefone' do

  scenario 'incluir tipotelefone' do # , :js => true  do

    visit new_tipotelefone_path

    preencher_e_verificar_tipotelefone

    

  end

  scenario 'alterar tipotelefone' do #, :js => true  do

    tipotelefone = FactoryGirl.create(:tipotelefone)

    visit edit_tipotelefone_path(tipotelefone)

    preencher_e_verificar_tipotelefone



  end

   scenario 'excluir tipotelefone' do #, :javascript => true  do

       tipotelefone = FactoryGirl.create(:tipotelefone)

        visit tipotelefones_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tipotelefone

	fill_in 'Descricao',  :with => "Telefone Celular"
	click_button 'Salvar'
	page.should have_content 'Descricao: Telefone Celular'
   end
end



