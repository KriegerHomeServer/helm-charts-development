{{- define "helm-charts.blocky.custom-resource-definitions" -}}
apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  name: dnsmappings.blocky.io
spec:
  group: blocky.io
  names:
    plural: dnsmappings
    singular: dnsmapping
    kind: DnsMapping
    shortNames:
      - dmap
  scope: Namespaced
  versions:
    - name: v1
      served: true
      storage: true
      schema:
        openAPIV3Schema:
          type: object
          properties:
            spec:
              type: object
              properties:
                domain:
                  type: string
                ip:
                  type: string
{{- end -}}