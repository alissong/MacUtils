#!/bin/bash

# Função para exibir mensagens coloridas
function print_message {
  echo -e "\033[1;32m$1\033[0m"
}

# Atualiza o sistema
print_message "Atualizando o sistema..."
sudo softwareupdate -ia

# Verifica e instala o Homebrew
if ! command -v brew &>/dev/null; then
  print_message "Instalando o Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  print_message "Homebrew já está instalado. Atualizando..."
  brew update && brew upgrade
fi

# Verifica e instala Node.js e npm
if ! command -v node &>/dev/null; then
  print_message "Instalando Node.js e npm..."
  brew install node
else
  print_message "Node.js já está instalado. Atualizando..."
  brew upgrade node
fi

# Verifica se o npm está instalado
if command -v npm &>/dev/null; then
  print_message "npm já está instalado. Atualizando..."
  npm install -g npm
else
  print_message "Algo deu errado na instalação do npm. Verifique o processo."
fi

# Instalação do aws-azure-login via npm
if npm list -g aws-azure-login &>/dev/null; then
  print_message "aws-azure-login já está instalado. Atualizando..."
  npm update -g aws-azure-login
else
  print_message "Instalando aws-azure-login..."
  npm install -g aws-azure-login
fi

# Instalação do Terraform
if ! command -v terraform &>/dev/null; then
  print_message "Instalando o Terraform..."
  brew install terraform
else
  print_message "Terraform já está instalado. Atualizando..."
  brew upgrade terraform
fi

# Instalação do Terragrunt
if ! command -v terragrunt &>/dev/null; then
  print_message "Instalando o Terragrunt..."
  brew install terragrunt
else
  print_message "Terragrunt já está instalado. Atualizando..."
  brew upgrade terragrunt
fi

# Instalação do tfenv
if ! command -v tfenv &>/dev/null; then
  print_message "Instalando o tfenv..."
  if brew list terraform &>/dev/null; then
    print_message "Unlinking Terraform para evitar conflitos com tfenv..."
    brew unlink terraform
  fi
  brew install tfenv
else
  print_message "tfenv já está instalado. Atualizando..."
  if brew list terraform &>/dev/null; then
    print_message "Unlinking Terraform para evitar conflitos com tfenv..."
    brew unlink terraform
  fi
  brew upgrade tfenv
fi

# Instalação do AWS CLI
if ! command -v aws &>/dev/null; then
  print_message "Instalando o AWS CLI..."
  brew install awscli
else
  print_message "AWS CLI já está instalado. Atualizando..."
  brew upgrade awscli
fi

# Instalação do Podman
if ! command -v podman &>/dev/null; then
  print_message "Instalando o Podman..."
  brew install podman
else
  print_message "Podman já está instalado. Atualizando..."
  brew upgrade podman
fi

# Instalação do Kubernetes CLI (kubectl)
if ! command -v kubectl &>/dev/null; then
  print_message "Instalando o Kubernetes CLI (kubectl)..."
  brew install kubectl
else
  print_message "Kubernetes CLI (kubectl) já está instalado. Atualizando..."
  brew upgrade kubectl
fi

# Instalação do Helm
if ! command -v helm &>/dev/null; then
  print_message "Instalando o Helm..."
  brew install helm
else
  print_message "Helm já está instalado. Atualizando..."
  brew upgrade helm
fi

# Instalação do Ansible
if ! command -v ansible &>/dev/null; then
  print_message "Instalando o Ansible..."
  brew install ansible
else
  print_message "Ansible já está instalado. Atualizando..."
  brew upgrade ansible
fi

# Instalação do Python
if ! command -v python3 &>/dev/null; then
  print_message "Instalando o Python..."
  brew install python
else
  print_message "Python já está instalado. Atualizando..."
  brew upgrade python
fi

# Verifica se o pip está instalado
if command -v pip3 &>/dev/null; then
  print_message "pip já está instalado. Atualizando..."
  pip3 install --upgrade pip
else
  print_message "Algo deu errado na instalação do pip. Verifique o processo."
fi

# Instalação do virtualenv
if ! pip3 show virtualenv &>/dev/null; then
  print_message "Instalando o virtualenv..."
  pip3 install virtualenv
else
  print_message "virtualenv já está instalado. Atualizando..."
  pip3 install --upgrade virtualenv
fi

# Instalação do pytest
if ! pip3 show pytest &>/dev/null; then
  print_message "Instalando o pytest..."
  pip3 install pytest
else
  print_message "pytest já está instalado. Atualizando..."
  pip3 install --upgrade pytest
fi

# Testa as instalações
print_message "Testando as instalações:"
print_message "Versão do Homebrew: $(brew --version | head -n 1)"
print_message "Versão do Node.js: $(node -v)"
print_message "Versão do npm: $(npm -v)"
print_message "Versão do Terraform: $(terraform -version | head -n 1)"
print_message "Versão do Terragrunt: $(terragrunt -version | head -n 1)"
print_message "Versão do tfenv: $(tfenv --version)"
print_message "Versão do AWS CLI: $(aws --version)"
print_message "Versão do Podman: $(podman --version | head -n 1)"
print_message "Versão do kubectl: $(kubectl version --client --short)"
print_message "Versão do Helm: $(helm version --short)"
print_message "Versão do Ansible: $(ansible --version | head -n 1)"
print_message "Versão do Python: $(python3 --version)"
print_message "Versão do pip: $(pip3 --version)"
print_message "Versão do virtualenv: $(virtualenv --version)"
print_message "Versão do pytest: $(pytest --version)"

print_message "Instalação concluída com sucesso!"
