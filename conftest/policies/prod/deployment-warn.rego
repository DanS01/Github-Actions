package test

warn_noResourcesForContainer[msg] {
    input.kind == "Deployment"
    not input.spec.template.spec.containers.resources

    msg := "No resource limits defined for container"
}
