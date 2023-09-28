# Use the base Arch Linux image
FROM archlinux:base

# Maintainer label
LABEL maintainer="damionvoshall@gmail.com"

# Update the package repository and install necessary packages
RUN pacman -Syu --noconfirm rust neovim 

# Set the default shell to zsh
SHELL ["/usr/bin/zsh", "-c"]

# Expose any necessary ports (optional)
# EXPOSE 8000

# Command to run when the container starts
CMD ["nvim"]

