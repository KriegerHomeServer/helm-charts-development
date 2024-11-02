{{- define "helm-charts.blocky.role-bindings" -}}
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: blocky-cronjob-sa-read-write-configmaps
  namespace: {{ .Release.Namespace }}
subjects:
- kind: ServiceAccount
  name: blocky-cronjob-sa
  namespace: {{ .Release.Namespace }}
roleRef:
  kind: Role
  name: read-write-configmaps
  apiGroup: rbac.authorization.k8s.io
---
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: blocky-cronjob-sa-rollout-restart-deployments
  namespace: {{ .Release.Namespace }}
subjects:
- kind: ServiceAccount
  name: blocky-cronjob-sa
  namespace: {{ .Release.Namespace }}
roleRef:
  kind: Role
  name: rollout-restart-deployments
  apiGroup: rbac.authorization.k8s.io
{{- end -}}