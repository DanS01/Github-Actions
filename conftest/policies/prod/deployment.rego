package test

deny_containerSpecifiedInDeployment[msg] {
    input.kind == "Deployment"
    not input.spec.template.spec.containers

    msg := "Containers must be specified in the deployment config"
}
