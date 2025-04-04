output "instnace_id" {
    description = "ID of EC2 instance"
    value = aws_instance.test_server.id
}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value = aws_instance.test_server.public_ip
}