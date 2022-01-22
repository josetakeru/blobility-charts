{{- define "dockerSecretJson" }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .Values.secret.dockerRegistry .Values.secret.dockerUsername .Values.secret.dockerPassword (printf "%s:%s" .Values.secret.dockerUsername .Values.secret.dockerPassword | b64enc) | b64enc }}
{{- end }}