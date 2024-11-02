{{- define "helm-charts.blocky.configmaps" -}}
apiVersion: v1
kind: ConfigMap
metadata:
  name: blocky-configuration
  namespace: {{ .Release.Namespace }}
data:
  config.yml: |-
    upstreams:
      groups:
        default:
{{ toYaml .Values.config.upstreamDnsServer | indent 10}}
    blocking:
      denylists:
        ads:
{{ toYaml .Values.config.blockLists | indent 10}}
      clientGroupsBlock:
        default:
          - ads
    ports:
      http: {{ .Values.deployment.httpPort }}
      dns: 53
    customDNS:
      customTTL: 1h
      filterUnmappedTypes: true
{{- end -}}