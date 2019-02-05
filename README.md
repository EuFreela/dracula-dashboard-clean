# Dracula Dashboard Clean
Backdoor Project

### SOBRE
<p>Este projeto trata-se de uma interface para utilização da Backdoor desenvolvida em Java. O objetivo é criar uma bootnet de forma que o dashboard possa oferecer recursos desde comandos arbitrários à processamento paralelo por meio de uma GRID na internet. Com este dashboard, as funcionalidades serão desenvolvidas por meio de plugins que estarão dispoibilizados neste git e no site da Packgerlist.</p>

<p>Linguagem de programação deste dashboar: PHP7.3</P>
<p>Framework: Laravel 5.7</P>


### DEPENDÊNCIA
<P>A dashboard é dependente da backdoor que esta sendo desenvolvida. O projeto poderá ser encontrado neste memso git</p>
<a href="https://github.com/EuFreela/dracula">Backdoor Dracula</a>


### INSTALL

<p>Esta versão foi desenvolvida na ultima versão do Laravel. Sua ultima versão se faz necessário a utilização do php7.3</p>
<p>Faça o fork do projeto em algum diretório de sua escolha.</p>
<p>Uma vez instalado o php7.3, nõ há necessidade de uso de um servidor apache se rodar o projeto localmente. Basta utilizar o comando:</p>
<pre>
php artisan serve
</pre>

<p>Para rodar na rede local:</p>
<pre>
php artisan --host=IP_local --port=PORTA
</pre>

<p>Instale o banco de dados no seu servidor. Lembro que você terá que ter um servidor mysql remoto. Isso é possível conseguir na internet com serviços gratuitos. A que não precisará estar online é o dashboard. Não há necessidade. A backdoor precisa conectar com o banco de dados. ALém de um servidor, você poderá utilizar recursos no roteador para torná-lo público.</p>
<p>Instale o mysql no servidor. ENcontra-se na pasta DB/dbdracula.</p>
<p>Após instalação, abra um terminal na pasta do projeto. Utilize o artisan para migrar as tabelas:</p>
<pre>
php artisan migrate
</pre>

<p>Após, popule o banco de dados com as informações default:</p>
<pre>
php artisan db:seed
</pre>

<p>Configure o .env (arquivo oculto), com os dados do banco de dados da sua conexão. O arquivo esta na raiz do projeto:</p>
<pre>
DB_CONNECTION=mysql
DB_HOST=IP_DA_SUA_CONEXAO_DO_BANCO
DB_PORT=3306
DB_DATABASE=dbdracula
DB_USERNAME=USUARIO_DE_ACESSO_AO_SEU_BANCO_DE_DADOS
DB_PASSWORD=SENHA_DE_ACESSO_AO_SEU_BANCO_DE_DADOS
</pre>

<p>Inicie o projeto</p>
<pre>
php artisan serve
</pre>

<p>Acesse a url no seu browser pela informação do comando anterior</p>
<pre>
http://localhost:8000
</pre>

<p>Clique em login. Para acessar o dashboard utilize as credenciais default</p>
<pre>
usuario: dracula@dracula.com
senha: dracula
</pre>

<p>A versão CLEAN não há plugins instalados. Vou fornecer conforme evolução do projeto. A cada instalação de um plugin são listados na dashboard automaticamente.</p>

<hr>

### PLUGINS

1. DRACULA HOSTS: <a href="https://github.com/EuFreela/dracula-hosts">Plugin DH<a>


<hr>
<img src="https://i.postimg.cc/WzWB6svv/Captura-de-tela-em-2019-02-05-18-35-09.png">
<img src="https://i.postimg.cc/7ZHkvtKd/Captura-de-tela-em-2019-02-05-18-44-43.png">
<img src="https://i.postimg.cc/fbkQytnv/Captura-de-tela-em-2019-02-05-18-45-44.png">
