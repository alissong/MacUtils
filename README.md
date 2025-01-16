# Mac Services Installation Script

This script automates the installation and update of various development tools and services on macOS.

## Features

- System update
- Homebrew installation and update
- Node.js and npm installation and update
- AWS CLI, Terraform, Terragrunt, tfenv, Podman, Kubernetes CLI (kubectl), Helm, Ansible, Python, pip, virtualenv, and pytest installation and update
- Visual Studio Code installation and update

## Usage

1. Clone the repository or download the script.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable:
    ```bash
    chmod +x install-mac-services.sh
    ```
4. Run the script:
    ```bash
    ./install-mac-services.sh
    ```

## Script Details

### Functions

- `print_message`: Displays messages in green color for better visibility.

### Steps

1. **System Update**: Updates the macOS system using `softwareupdate`.
2. **Homebrew**: Checks if Homebrew is installed; if not, installs it. If already installed, updates it.
3. **Node.js and npm**: Checks if Node.js and npm are installed; if not, installs them. If already installed, updates them.
4. **AWS CLI**: Checks if AWS CLI is installed; if not, installs it. If already installed, updates it.
5. **Terraform**: Checks if Terraform is installed; if not, installs it. If already installed, updates it.
6. **Terragrunt**: Checks if Terragrunt is installed; if not, installs it. If already installed, updates it.
7. **tfenv**: Checks if tfenv is installed; if not, installs it. If already installed, updates it.
8. **Podman**: Checks if Podman is installed; if not, installs it. If already installed, updates it.
9. **Kubernetes CLI (kubectl)**: Checks if kubectl is installed; if not, installs it. If already installed, updates it.
10. **Helm**: Checks if Helm is installed; if not, installs it. If already installed, updates it.
11. **Ansible**: Checks if Ansible is installed; if not, installs it. If already installed, updates it.
12. **Python**: Checks if Python is installed; if not, installs it. If already installed, updates it.
13. **pip**: Checks if pip is installed; if not, installs it. If already installed, updates it.
14. **virtualenv**: Checks if virtualenv is installed; if not, installs it. If already installed, updates it.
15. **pytest**: Checks if pytest is installed; if not, installs it. If already installed, updates it.
16. **Visual Studio Code**: Checks if Visual Studio Code is installed; if not, installs it. If already installed, updates it.

### Testing Installations

The script tests the installations by printing the versions of the installed tools.

## Notes

- Ensure you have the necessary permissions to install software on your macOS system.
- The script uses `sudo` for system updates, so you may be prompted to enter your password.

## License

This project is licensed under the MIT License.