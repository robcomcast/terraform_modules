terraform {
    backend "s3" {
        bucket  = "cap-sre-configs"
        key     = "stage/data-stores/mysql/terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
    }

}
resource "aws_db_instance" "example" {

    engine                  = "mysql"
    allocated_storage       = 10
    instance_class          = "db.t2.micro"
    name                    = "example_database"
    username                = "admin"
    password                = "${var.db_password}"
  
}
