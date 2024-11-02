{{- define "helm-charts.blocky.cluster-roles" -}}
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: read-dnsmappings
rules:
- apiGroups: ["blocky.io"]
  resources: ["dnsmappings"]
  verbs: ["get", "list", "watch"]
{{- end -}}