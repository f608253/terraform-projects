
resource "local_file" "devops3" {
   for_each = toset(["file1","file2","file3","filen"])
   filename = "${each.value}"
   content = each.value
 }