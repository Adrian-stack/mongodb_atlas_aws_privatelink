output "id" {
    value = mongodbatlas_cluster.cluster-test.id
}

output "connection_string_uri" {
    value = mongodbatlas_cluster.cluster-test.connection_strings[0].private_endpoint[0].connection_string
}

output "hostname" {
    value = regex("([0-9a-z-.]+)", trim(mongodbatlas_cluster.cluster-test.connection_strings[0].private_endpoint[0].connection_string, "mongodb://"))
}

output "ports" {
    value = regexall("(?:[0-9]+){4}", mongodbatlas_cluster.cluster-test.connection_strings[0].private_endpoint[0].connection_string)
}

output "port" {
    value = regex("(?:[0-9]+){4}", mongodbatlas_cluster.cluster-test.connection_strings[0].private_endpoint[0].connection_string)
}