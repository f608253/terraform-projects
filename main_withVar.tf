resource "local_file" "games" {
    filename = var.filename
    content = var.content
    file_permission = "0754"
}
