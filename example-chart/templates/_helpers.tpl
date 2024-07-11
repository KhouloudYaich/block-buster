# _helpers.tpl

{{/*
This template is used to define helper templates for use throughout the chart.
*/}}

{{- define "example-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "example-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "example-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}
