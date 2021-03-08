describe 'Kairos', :kairos11 do

    before(:each) do
        @imagem = Dir.pwd + '/spec/fixtures/empresa.png'
    end


    it 'Criação de empresa' do 
        #login
        visit 'http://qcdev.dimepkairos.com.br'
        fill_in 'LogOnModel.UserName', with: 'teste23022021lancamento1br@teste.com'
        fill_in 'LogOnModel.Password', with: '1'
        click_button 'btnFormLogin'

        #Tela de criação de empresa
        visit 'http://qcdev.dimepkairos.com.br/Dimep/Empresas/Create'

        fill_in 'Empresa_Codigo', with: '1009001'
        fill_in 'Empresa_Telefone', with: '1199764432'

        #desmarcar portaria
        #CHECKBOX
        find('label[for="CbUtilizaPortaria"]', :visible=>false).set(false)
        fill_in 'Empresa_RazaoSocial', with: 'Empresa teste cria 1'
        puts 'Kairos checkbox ok'
        
        #Marcar a opção de cpf - 
        #RADIOBUTTON
        find('label[for="rdCpf"]', :visible=>false).click
        #fill_in 'Empresa_CnpjCpf', with: '325.619.801-54'
        puts 'Kairos Radiobutton ok'
        
        fill_in 'Empresa_Endereco', with: 'Endereço 1'
        fill_in 'Empresa_Bairro', with: 'Bairro 1'
        fill_in 'Empresa_Cidade', with: 'Cidade 1'
        fill_in 'Empresa_UF', with: 'SP'
        fill_in 'Empresa_Pais', with: 'Brasil'
        fill_in 'Empresa_DataAbertura', with: '01/01/2021'
        find('label[for="LogotipoPersonalizado"]', :visible=>false).set(true)
        
        sleep 6  
     
    
    end
        #UPLOAD
        #el.attach_file('C:\qafullstack\ruby\capy2\spec\fixtures\empresa.png')
        #@imagem = Dir.pwd + '/spec/fixtures/empresa.png'
        #find('.div_logotipo', visible: false)
        #.attach_file(imagem)
        # @imagem = Dir.pwd + '/spec/fixtures/empresa.png'
        # attach_file('fileuploadsubmit', @imagem)
        #click_button 'Upload'
        #C:\qafullstack\ruby\capy2\spec\fixtures\empresa.png'
        #attach_file('files[]', @imagem)
        #click_button 'Upload'
        #click_button 'Salvar'

        after(:each) do
            sleep 3
        end
end

