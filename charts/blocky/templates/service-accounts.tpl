{{- define "helm-charts.blocky.service-accounts" -}}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: blocky-cronjob-sa
  namespace: {{ .Release.Namespace }}
{{- end -}}