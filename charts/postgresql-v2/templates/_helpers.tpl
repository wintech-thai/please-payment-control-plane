{{- define "onix-postgres.fullname" -}}
{{- printf "postgresql-onix-v2" }}
{{- end }}

{{- define "onix-postgres.labels" -}}
app.kubernetes.io/name: {{ include "onix-postgres.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "onix-postgres.selectorLabels" -}}
app.kubernetes.io/name: {{ include "onix-postgres.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
