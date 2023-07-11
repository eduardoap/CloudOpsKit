resource "aws_route53_zone" "main" {
  name = var.dns_domain

  tags = {
    Name = "CloudOpsKit-DNS-Zone"
  }
}