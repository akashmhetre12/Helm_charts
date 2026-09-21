{{- define "myapp.name" -}}
myapp
{{- end -}}

{{- define "myapp.fullname" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "myapp.labels" -}}
app.kubernetes.io/name: {{ include "myapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
