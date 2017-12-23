variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-west-2"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+JROffJNVxAstSsdUaukd5vBNocT1IHv9W799QSxstPeJ1fmn6fQRoXynmOkDZewzYsxq+MZsmsdoKVEQNzl9PBEsNrIV+IhktWRtVmPAG8sb6tQ967kfrjxpqGjR4hv18eRcFkLJT1bj2aoeuee6wP9jC40OtqEpqt9sILW3nntTYYwVfjj9bi9fBNKwkQpZR3iAUQz5xW5xbgLpjY68E0f/RMjSRfEf3LxhA+UyKCOJ9vciSrX42R7f6pG6Khg9kboVCAEf2jx+qiYdZamGNWO/99IVqG+p9Z0OchTOyKZY+kwR7PNfm/ucPG5oLZCl8gZ/PpkhpYK1P2thhxMo8xdEw8+fEc0OLlIparzKEbm4NO7a/zTkTOAD3ekWZ1Csfql0poqODJgwV4qTWXcE9HtaY18yW9B+XF6guUgqL9qaVtoBrXC2nATRmoqWs/aYEC/A4UfMdgTyS6GSLImHwe1o3DeWeAq8D6IcHjB0fdbjPIkmVJh8NkErBMyeuO3nc3HJp+uHd3y+d3lmGYpKSqHNcfbwNEdQ+Yc00SC9aWUpDLXAD0DVvUolaG8o6l1dPaXszNORoI7XF1UOWWwvuEsrUhw6P9WFCPtMIvj01QRpLXuD2eQCIi10MwxwW3cWS/YwZcB6OrI3SYaiXXGEWYa/FyImYqqcmjYmfAQO8Q== mizushi@gmail.com"
}

variable "key_name" {
    default = "backbeard-key"
}
