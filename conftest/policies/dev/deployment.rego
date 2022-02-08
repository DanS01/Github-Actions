package test

deny_runAsNonRoot[msg] {
    input.kind == "Deployment"
    not input.spec.template.spec.securityContext.runAsNonRoot

    msg := "Containers must not run as root"
}

deny_runAsNonRootException[msg] {
    input.kind == "Deployment"
    not input.spec.template.spec.securityContext.runAsNonRoot

    msg := "Containers must not run as root - Exception Version"
}

deny_noAppLabelForPodSelector[msg] {
    input.kind == "Deployment"
    not input.spec.selector.matchLabels.app

    msg := "Containers must provide app label for pod selectors"
}
