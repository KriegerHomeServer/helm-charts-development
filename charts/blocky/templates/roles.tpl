{{- define "helm-charts.blocky.roles" -}}
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: read-write-configmaps
  namespace: {{ .Release.Namespace }}
rules:
- apiGroups: [""]
  resources: ["configmaps"]
  verbs: ["*"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: rollout-restart-deployments
  namespace: {{ .Release.Namespace }}
rules:
- apiGroups: ["apps"]
  resources: ["deployments", "replicasets", "pods"]
  verbs: ["get", "patch"]
{{- end -}}