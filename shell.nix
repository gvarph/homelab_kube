{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.kubernetes-helm
    pkgs.argocd
    pkgs.kubectl
  ];

  KUBECONFIG = /etc/rancher/k3s/k3s.yaml;
}
