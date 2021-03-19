resource "aws_route53_record" "London" {
  zone_id = "Z00115652OA7SOGTCHEM2"
  name    = "London.awsnovclass.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}