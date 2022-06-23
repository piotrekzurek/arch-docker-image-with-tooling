FROM archlinux:latest

RUN pacman -Syq --noconfirm sudo yq jq aws-cli kubectl fluxctl sed coreutils sops
RUN useradd -m cicd
# Uncomment if we happen to need this afterall (we shouldn't need that)
# RUN echo "cicd ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/cicd

USER cicd

CMD [ "/bin/bash" ]
