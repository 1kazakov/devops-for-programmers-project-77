resource "yandex_dns_zone" "zone1" {
  name   = "project-dns-zone"
  zone   = "hexlet-test.site."
  public = true
}

resource "yandex_dns_recordset" "rs2" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "hexlet-test.site."
  type    = "A"
  ttl     = 600
  data    = [yandex_alb_load_balancer.project-balancer.listener[0].endpoint[0].address[0].external_ipv4_address[0].address]
}