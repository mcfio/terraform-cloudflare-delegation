resource "cloudflare_record" "milton_delegated_zone" {
  count   = length(var.delegated_nameservers)
  zone_id = var.zone_id
  name    = var.name
  type    = "NS"
  ttl     = var.ttl
  value   = var.delegated_nameservers[count.index]
}
