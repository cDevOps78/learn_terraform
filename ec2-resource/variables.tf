
variable "tags" {
    default = {
        frontend = {
            Name: "frontend"
            monitor: "yes"
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