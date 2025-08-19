# ## for each argument is similar to count in the sense that theyt are used to provision multiple instance from a single resource block.check "
# ## with count, it goes with number and list of string. 

# ## with for each, it create multiple instances of a resource base on a map or set of string. 

# count takes a number or list of strings
# for each, takes a map of string or set of string

# A list is an ordered collection of items. Every item has an index position. With a list items can repeat more than once ["use1", "use2", use1]
# A set is an unordered collection of items. An item can only exist once. ["use1", "use2"]


## create multiple IAM user from a single resource block. 

resource "aws_iam_user" "users" {
  for_each = var.user-name
  name = each.key
}

variable "bucket-name" {
  type = list(string)
  default = [ "Tita12345675", "Boris123456", "tita0987654" ]
}