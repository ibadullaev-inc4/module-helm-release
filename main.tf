resource "helm_release" "this" {
    name                = var.name
    chart               = var.chart
    namespace           = var.namespace
    version             = var.version
    create_namespace    = var.create_namespace

    values = [
        for file in var.values_files:
        "${file("./charts/${name}/${file}")}"
    ]

    dynamic "set" {
        iterator = item
        for_each = var.set == null ? [] : var.set
        content {
            name  = item.value.name
            value = item.value.value
        }
    }
}

