package test

deny_secretsMissing[msg] {
    input.kind == "SealedSecret"
    not input.spec.encryptedData

    msg := "Encrypted sealed secrets should not be missing from the secret file"
}
