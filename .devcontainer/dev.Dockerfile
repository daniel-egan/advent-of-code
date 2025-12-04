FROM debian:latest

RUN apt-get update && apt-get install -y sudo zsh git curl unzip

COPY .zshrc /root/.zshrc

# Bun JavaScript/TypeScript
RUN curl -fsSL https://bun.sh/install | bash
RUN echo 'export BUN_INSTALL="$HOME/.bun"' >> ~/.zshrc
RUN echo 'export PATH="$BUN_INSTALL/bin:$PATH"' >> ~/.zshrc

# UV Python
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
RUN echo 'eval "$(uvx --generate-shell-completion zsh)"' >> ~/.zshrc

# Ruby
RUN apt-get install -y ruby-full

# PHP
RUN apt install -y php

# Lua
RUN apt install -y lua5.4