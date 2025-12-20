FROM debian:latest

ENV HOME=/home/devcontainer

RUN groupadd -g 1001 devcontainer \
 && useradd -m -u 1001 -g devcontainer devcontainer \
 && apt-get update && apt-get install -y sudo \
 && echo "devcontainer ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER devcontainer

RUN sudo apt-get install -y zsh git curl unzip

COPY --chown=devcontainer:devcontainer .zshrc $HOME/.zshrc

# Bun JavaScript/TypeScript
RUN curl -fsSL https://bun.sh/install | bash
RUN echo 'export BUN_INSTALL="$HOME/.bun"' >> $HOME/.zshrc
RUN echo 'export PATH="$BUN_INSTALL/bin:$PATH"' >> $HOME/.zshrc

# UV Python
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN echo 'eval "$(uv generate-shell-completion zsh)"' >> $HOME/.zshrc
RUN echo 'eval "$(uvx --generate-shell-completion zsh)"' >> $HOME/.zshrc

# Ruby
RUN sudo apt-get install -y ruby-full

# PHP
RUN sudo apt install -y php

# Lua
RUN sudo apt install -y lua5.4

# Perl
RUN sudo apt install -y perl

# Gleam
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
RUN brew install gleam 
RUN brew install erlang