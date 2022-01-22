#script to install argocd rollout-controller using the argo cli

argocd app create demo \
--project default \
--repo https://github.com/codefresh-contrib/gitops-certification-examples \
--path ./canary-app \
--sync-policy auto \
--dest-namespace default \
--dest-server https://kubernetes.default.svc
