{{- define "dockerSecretJson" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.secrets (printf "%s:%s" .Values.secret.dockerUsername .Values.secret.dockerPassword | b64enc) | b64enc }}
{{- end }}