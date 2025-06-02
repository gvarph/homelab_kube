{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.kubernetes-helm
    pkgs.argocd
    pkgs.kubectl
  ];

  shellHook = ''
    export KUBECONFIG=/etc/rancher/k3s/k3s.yaml;
  '';
}
