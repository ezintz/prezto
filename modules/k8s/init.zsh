#
# Defines aliases and functions for kubernetes.
#
# Authors:
#   Eduard Zintz <e@zintz.cc>
#

# Load dependencies.
pmodload 'helper'

#
# Aliases
#

alias kadm='kubeadm'
alias k='kubectl'
alias kc='kubectl config'
alias kuc='kubectl config use-context'
alias kg='kubectl get'
alias kgpod='kubectl get pod'
alias kgall=kubectl get --all-namespaces all
alias kdp='kubectl describe pod'
alias kap='kubectl apply'
alias krm='kubectl delete'
alias krmf='kubectl delete -f'
alias kd='kubectl delete'
alias kdf='kubectl delete -f'
alias kgsvc='kubectl get service'
alias kgdep='kubectl get deployments'
alias kl='kubectl logs'
alias kei='kubectl exec -it'
