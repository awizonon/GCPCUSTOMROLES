output "router_name" {
  value = google_compute_router.router.name #RECUPERATION DU NOM DE LA ROUTE
}
output "router_region" {
  value = google_compute_router.router.region #RECUPERATION DE LA REGION
}