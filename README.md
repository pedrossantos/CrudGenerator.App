# CrudGenerator

## Projeto desenvolvido por Pedro Henrique da Silva Santos, com intuíto de divulgação de seus conhecimentos técnicos aplicados no desenvolvimento desta solução.


**CrudGenerator** é um aplicativo desenvolvido utilizando vários conceitos de boas práticas, utilizando tecnologias .NET (Framework, Standard e Core) e **Code Obfuscation**.
Como boas práticas, foram utilizados conceitos baseados na cultura SOLID: Clean Code, Design Patterns, Dependency Inversion, Micro Front-End, entre outros.
Tecnologias **.NET Framework, .NET Standard e .NET Core** foram utilizados para o desenvolvimento de componentes de tela/apresentação (View e ViewModel) e também para o desenvolvimento da aplicação final, em WPF.

Para possibilitar a implementação desta solução, também foi necerssário desenvolver um Framework proprietário, no qual existem implementaçãoes que vão desde a abstração de ORM (Object-Relational Mapping), também proprietário, a abstrações para a camada de aplicação e apresentação.
Atualmente, o ORM desenvolvido dá suporte para leitura de definições de um determinado banco de dados, necessário para a geração de classes baseadas no Framework citado acima, e também, à partir de utilização do mesmo Framework, possibilita a implementação de modelos e repositórios em C# para interação com estes bancos de dados.

Hoje, há suporte para bancos de dados **Sqlite, SqlServer, PostgreSql e Mysql**. Suporte para os bancos de dados Orable, Firebird e MariaDB estão em desenvolvimento.
Para verificar uma desmonstração de utilização, com banco de dados MySql, veja "CrudGenerator_Demonstração.gif" (ainda não atualizado com desmonstação da geração da solução completa).

Também foram desenvolvidos instaladores (pt-BR e en-US) para disponibilizar a aplicação para quem se interessar em conhecê-la. Para instaladores, acesse as pastas "installer/net461" (*compatível com Windows 7*) ou "installer/net462".
Caso queira saber mais sobre o Framework e esta solução, ou queira colaborar indicando ocorrência de bugs, entre em contato através do e-mail "ss.pedrohenrique@gmail.com".

Após instalar e realizar a geração de um projeto à partir do **CrudGenerator**, basta seguir os passos abaixo para compilar e executar o projeto gerado:
 - Faça o download do script de instalação do **.NET SDK para Windows** em "https://dot.net/v1/dotnet-install.ps1"; (Fonte: https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script)
 - Abra o **Windows PowerShell**, navegue até a pasta na qual "dotnet-install.ps1" foi salvo e execute o comando "*./dotnet-install.ps1 -Channel LTS*" para que a última versão LTS do .NET SDK seja instalado;
   - Em caso de erro "UnauthorizedAccess: O arquivo *...\dotnet-install.ps1* não pode ser carregado porque a execução de scripts foi desabilitada neste sistema", abra o **Windows PowerShell** com permissão de *Administrador*, execute o comando "*Set-ExecutionPolicy Unrestricted*" para que seja habilitada a execução de scripts via **Windows PowerShell**; reinicie o Windows e execute novamente o passo anterior;
 - Após a instalação do .NET SDK, abra o **Windows PowerShell**, navegue até a pasta selecionada para a geração do projeto CRUD via **CrudGenerator** e execute **BuildAndRun.bat**; isto fará com que seja realizado o restore das depenências, compilação e execução do projeto **CRUD**.

Obrigado!
