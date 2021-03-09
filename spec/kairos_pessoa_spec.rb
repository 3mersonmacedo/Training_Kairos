
        
        describe 'Kairos', :pessoa do

            it 'Cadastro de Pessoa' do 
                #login
                visit 'https://www.dimepkairos.com.br/'
                fill_in 'LogOnModel.UserName', with: 'planoteste06102020br1@teste.com'
                fill_in 'LogOnModel.Password', with: '1'
                click_button 'btnFormLogin'
                #Acceso criação
                puts 'Kairos login ok'
                visit 'https://www.dimepkairos.com.br/Dimep/Pessoas/Create'
                #click_button 'Nova Pessoa'
                sleep 3
                #Informar dados
                fill_in 'CreateModel_Nome', with: 'Pessoa de teste de criação 1'
                fill_in 'CreateModel_DataNascimento', with: '01/01/2020'
                # inserir select de sexo do usuário
                fill_in 'CreateModel.Rg', with: '33.822.474-9'
                fill_in 'CreateModel_Cpf', with: '66939430040' 
                fill_in 'CreateModel_Pis', with: '11111111116'
                fill_in 'CreateModel_Endereco', with: 'Avenida Simão Freita , 1445'
                fill_in 'CreateModel_Matricula', with: '1'
                fill_in 'CreateModel_DataAdmissao', with: '30/04/2001'
                fill_in 'CreateModel_Cracha', with: '1'
                drop = find('.CreateModel.TipoFuncionarioCodigo')
                drop.find('option', text: 'Normal').select_option 
                puts 'Kairos dropdown ok'
        
        
        
                sleep 20
            end
        end

