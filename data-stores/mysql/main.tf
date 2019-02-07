terraform {
    backend "s3" {
        bucket  = "${var.db_remote_state_bucket}"
        key     = "${var.db_remote_state_key}"
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
