# ambiente_dev_laravel
Ambiente para rodar o laravel localmente utilizando o terraform.
Certifique-se de que tanto o Docker Desktop quanto o binário do Terraform estejam instalados corretamente no seu sistema. 
Verifique se eles estão funcionando corretamente executando os comandos docker version e terraform version no prompt de comando ou terminal. Isso garantirá que as instalações foram bem-sucedidas.
Salve o arquivo "main.tf" e retorne ao prompt de comando ou terminal.

Navegue até o diretório do seu projeto usando o comando cd caminho/para/o/diretorio/terraform-docker.

Inicialize o diretório do projeto executando o comando terraform init. Isso baixará os plugins e dependências necessários para o provedor Docker.

Após a inicialização, você pode executar o comando terraform plan para visualizar as alterações que serão aplicadas no ambiente Docker com base na sua configuração.

Se tudo estiver correto, você pode prosseguir e aplicar as alterações executando o comando terraform apply. Isso criará o ambiente Docker conforme definido no seu arquivo "main.tf".
