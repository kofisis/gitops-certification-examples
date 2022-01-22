#script to install argocd rollout-controller using the argo cli

argocd app create argo-rollouts-controller \
--project default \
--repo https://github.com/codefresh-contrib/gitops-certification-examples \
--path ./argo-rollouts-controller \
--sync-policy auto \
--dest-namespace default \
--dest-server https://kubernetes.default.svc

# a new namespace has to be created for the rollout-manager
