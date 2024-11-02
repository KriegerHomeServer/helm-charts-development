{{- define "helm-charts.blocky.cluster-role-bindings" -}}
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: blocky-cronjob-sa-read-dnsmappings
subjects:
- kind: ServiceAccount
  name: blocky-cronjob-sa
  namespace: {{ .Release.Namespace }}
roleRef:
  kind: ClusterRole
  name: read-dnsmappings
  apiGroup: rbac.authorization.k8s.io
{{- end -}}