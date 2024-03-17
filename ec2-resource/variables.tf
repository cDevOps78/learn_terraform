
variable "tags" {
    default = {
        frontend = {
            Name: "frontend"
            monitor: "yes"
            frontend1 = {
                Name = "frontend1"
                rrr  = "rrrr"
            }
        }
        backend = {
            Name: "backend"
            monitor: "yes"
        }
        mysql = {
            Name: "mysql"
            monitor: "yes"
        }
    }  
}