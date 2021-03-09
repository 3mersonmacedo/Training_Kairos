describe 'Kairos', :empresa do


    it 'Criação de empresa' do 
        #login
        visit 'https://www.dimepkairos.com.br/'
        fill_in 'LogOnModel.UserName', with: 'planoteste06102020br1@teste.com'
        fill_in 'LogOnModel.Password', with: '1'
        click_button 'btnFormLogin'

        #Tela de criação de empresa
        visit 'https://www.dimepkairos.com.br/Dimep/Empresas/Create'

        fill_in 'Empresa_Codigo', with: '1009001'
        fill_in 'Empresa_Telefone', with: '1199764432'

        #desmarcar portaria
        #CHECKBOX
        find('label[for="CbUtilizaPortaria"]', :visible=>false).set(false)
        fill_in 'Empresa_RazaoSocial', with: 'Empresa teste cria 1'
        
        #Marcar a opção de cpf - 
        #RADIOBUTTON
        find('label[for="rdCpf"]', :visible=>false).click
        fill_in 'Empresa_CnpjCpf', with: '325.619.801-54'
        fill_in 'Empresa_Endereco', with: 'Endereço 1'
        fill_in 'Empresa_Bairro', with: 'Bairro 1'
        fill_in 'Empresa_Cidade', with: 'Cidade 1'
        fill_in 'Empresa_UF', with: 'SP'
        fill_in 'Empresa_Pais', with: 'Brasil'
        fill_in 'Empresa_DataAbertura', with: '01/01/2021'
        find('label[for="LogotipoPersonalizado"]', :visible=>false).set(true)
        
        sleep   
    end
#forms checkbox radiobutton
end

