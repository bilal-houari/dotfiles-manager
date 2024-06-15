## Dotfiles Manager

This script helps you manage your dotfiles by creating symlinks to files in a dedicated repository.

**How to Use:**

1. **Fork the Repository:**
   Fork this repository into your own **private** GitHub repository. This allows you to make changes and commit your own dotfiles.

2. **Clone your forked repository to your _home directory_:**
   ```bash
   cd && git clone <your-forked-repository-url> .dotfiles
   ```
   Replace `<your-forked-repository-url>` with the URL of your forked repository. And make sure you clone the script to your home directory.

3. **Navigate to the dotfiles directory:**
   ```bash
   cd .dotfiles
   ```

4. **Copy your dotfiles:**
   Copy the dotfiles you want to manage into the `.dotfiles` directory.

5. **Run the script:**
   ```bash
   ./install_dotfiles.sh
   ```

**Script Functionality:**

* **Finds dotfiles:** The script searches for all files starting with a dot (`.`) within the `.dotfiles` directory.
* **Skips files:** You can specify files or patterns to exclude from the symlinking process by modifying the `SKIP_FILES` variable.
* **Backs up existing dotfiles:** If a file with the same name exists in your home directory, it is backed up with a `.bak` extension.
* **Creates symlinks:** The script creates symlinks from the files in the `.dotfiles` directory to your home directory.

**Example:**

Let's say you have a `.zshrc` file in your `~/.dotfiles` directory.  The script will create a symlink at `~/.zshrc` pointing to your `~/.dotfiles/.zshrc` file.

**Note:**

* This script requires root access to create symlinks in your home directory.
* Make sure to customize the `SKIP_FILES` variable in `install_dotfiles.sh` to exclude any files inside `~/.dotfiles` that you don't want to manage with this script.
* After making changes to your dotfiles, commit and push them to your private repository to keep your dotfiles synchronized.

**License:**

This script is provided under the MIT license.
