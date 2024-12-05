resource "local_file" "mypetname" {
  filename = "pets.txt"
  content = "i love my pets"
lifecycle {
  create_before_destroy = true
}
}
resource "random_pet" "petname" {
  prefix = "Mr"
  separator = "."
  length = "1"
}
