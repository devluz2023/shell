# 🐚 Linux Shell Scripting & Infrastructure Automation Lab

Este repositório centraliza uma coleção de scripts utilitários em **Shell Script (Bash)** desenvolvidos para automatizar rotinas de administração de sistemas Linux, provisionamento de dependências e gerenciamento de segurança no nível do sistema operacional hospedeiro (*OS-Level Automation*). Esses scripts visam eliminar tarefas manuais repetitivas, garantindo velocidade e padronização na preparação de novos servidores.

---

## 🏗️ Estrutura e Escopo das Automações

Os scripts estão dispostos diretamente na raiz do repositório e cobrem três pilares principais de engenharia de infraestrutura:

### 🛡️ 1. Segurança & Provisionamento de Acesso
* **`generate sshkey`:** Script automatizado responsável por gerar pares de chaves criptográficas SSH seguras. Facilita o fluxo de trabalho de configuração de acessos sem senha (passwordless authentication) para administração remota de servidores e comunicação automatizada entre nós de clusters de forma segura.

### 🐋 2. Automação de Ambientes de Containers
* **`install-docker.sh` / `get-docker.sh`:** Rotinas estruturadas para automatizar o ciclo de vida de instalação do motor do **Docker** em distribuições Linux. Os scripts lidam com a atualização de repositórios do sistema, adição de chaves GPG oficiais, instalação dos pacotes de tempo de execução (*runtime*) e inicialização do daemon do serviço, deixando o ambiente de containers pronto para uso imediato.

### 🗃️ 3. Configuração de Dependências e Banco de Dados
* **`mssql.sh`:** Script focado na automação das etapas de configuração e parametrização do banco de dados **Microsoft SQL Server** para ambientes Linux, agilizando o deploy de instâncias relacionais estruturadas.
* **`glib.sh`:** Utilitário para gerenciamento, atualização ou compilação de bibliotecas base do sistema (`glib`), garantindo compatibilidade com softwares de baixo nível que exigem dependências de kernel ou runtime específicas.

---

## 🛠️ Stack Tecnológica

* **Linguagem Base:** Bash / Shell Scripting (POSIX Compliant)
* **Ecossistemas Gerenciados:** Docker (Containers), MSSQL (Bancos de Dados Relacionais), OpenSSH (Criptografia e Segurança).
* **Ambiente de Destino:** Servidores baseados em Linux (Debian/Ubuntu/RHEL).

---

## 🎯 Importância Estratégica no Perfil de DevOps e Engenharia

Dominar o desenvolvimento de automações nativas em Shell Script confere vantagens operacionais indispensáveis para profissionais de nível sênior:

1. **Automação Base (Day-Zero Provisioning):** Scripts de Shell são executados diretamente no sistema operacional sem a necessidade de instalar interpretadores pesados externos. Eles preparam o terreno básico (como instalar o Python ou configurar o SSH) para que ferramentas de orquestração mais complexas (como Ansible ou Terraform) possam assumir o controle do servidor.
2. **Esteiras de CI/CD Otimizadas:** A maioria das etapas de execução dentro de runners de pipelines (GitHub Actions, GitLab CI, Jenkins) consome comandos em Shell. Saber estruturar condicionais, capturar códigos de saída (*exit codes*) e tratar erros em scripts `.sh` garante esteiras de deploy muito mais estáveis e fáceis de depurar.
3. **Redução de Erros Operacionais:** Automatizar fluxos de configuração complexos (como políticas de bancos de dados ou instalações de runtimes) mitiga fal
