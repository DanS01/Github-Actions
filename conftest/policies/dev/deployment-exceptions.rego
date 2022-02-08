package test

exception[rules] {
  input.kind == "Deployment"
  input.metadata.name == "my-test-app"

  rules := ["runAsNonRoot"]
}

exception[rules] {
  input.kind == "Deployment"
  input.metadata.name == "my-test-app"

  rules := ["runAsNonRootException"]
}
