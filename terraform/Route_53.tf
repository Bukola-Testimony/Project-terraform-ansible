# create a record set in route 53 for domain name
resource "aws_route53_record" "record-subdomain" {
  zone_id = var.zone-id
  name    = "altschool.bukolatestimony.me"
  type    = "A"

  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}


# create a record set in route 53 for domain alias
resource "aws_route53_record" "record-domain" {
  zone_id = var.zone-id
  name    = "www.altschool.bukolatestimony.me"
  type    = "A"

  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}


