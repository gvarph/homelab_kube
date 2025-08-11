{{/*
Helm template helpers for Victoria Logs Event Exporter
*/}}

{{/*
Chart name and version
*/}}
{{- define "victoria-logs.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "victoria-logs.labels" -}}
helm.sh/chart: {{ include "victoria-logs.chart" . }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Event Exporter name
*/}}
{{- define "victoria-logs.eventExporter.fullname" -}}
{{ .Release.Name }}-event-exporter
{{- end }}

{{/*
Event Exporter selector labels
*/}}
{{- define "victoria-logs.eventExporter.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}-event-exporter
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: event-exporter
{{- end }}

{{/*
Event Exporter service account name
*/}}
{{- define "victoria-logs.eventExporter.serviceAccountName" -}}
{{ .Release.Name }}-event-exporter
{{- end }}