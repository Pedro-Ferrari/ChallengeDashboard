# Deploy no Serviço de Aplicativo da Azure 

## Passo 1: Fork do Repositório

1. Acesse o repositório original no GitHub e clique em **"Fork"** para criar uma cópia na sua conta.

## Passo 2: Criar um Serviço De Aplicativo no Azure

1. Acesse o [Portal do Azure](https://portal.azure.com/).
2. Crie um novo App Service:
   - Selecione **"Criar um recurso"** e depois **"Aplicativo Web"**.
   - Preencha os detalhes básicos e crie o App Service.
   - ( os dados estão no pdf, fotos para usar como exemplo! )

## Passo 3: Configurar o Centro de Implantação

1. Vá para o App Service criado no Portal do Azure.
2. No menu à esquerda, selecione **"Centro De Implantação"**.
3. Configure a conexão com o GitHub:
   - Selecione **"GitHub"** e autentique-se.
   - Escolha o repositório forkado e o branch desejado.

## Passo 4: Deploy e Teste

1. Após configurar o Centro De Implantação, o deploy será automático.
2. Acesse a URL fornecida pelo Serviço de aplicativo e teste a aplicação.

3. Para fazer os testes só entrar nas abas de usuário e feedbacks, e testar o aplicativo, o GET já está mostrando na tela, o UPDATE E DELETE possuem seus respectivos botões
   e o POST também...!

   passo a passo dessa parte de testes da aplicação deixamos claro no vídeo feito no youtube...
   segue o link: 

## Observações
- Certifique-se de que todas as variáveis de ambiente estão configuradas corretamente no Serviço de Aplicativo.
- Atualizações no repositório forkado serão automaticamente refletidas no App Service.
