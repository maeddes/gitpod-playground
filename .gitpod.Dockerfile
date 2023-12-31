FROM gitpod/workspace-full

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    echo y|sdk install java"

RUN brew install fzf exa buildpacks/tap/pack kubectl
RUN yes | $(brew --prefix)/opt/fzf/install

ENV SHELL=/usr/bin/zsh

RUN git clone https://github.com/zsh-users/zsh-autosuggestions /home/gitpod/.zsh/zsh-autosuggestions

ADD https://raw.githubusercontent.com/maeddes/dotfiles/main/.zshrc.gitpod.full /home/gitpod/.zshrc