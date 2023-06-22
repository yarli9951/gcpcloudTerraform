data "google_storage_bucket_object_content" "key" {
      name = "sample.txt"
	  bucket = "sample9951"

}

output "samplefilecontent" {

    value = data.google_storage_bucket_object_content.key.content
}



data "google_compute_default_service_account" "default" {
}

output "default_account" {
  value = data.google_compute_default_service_account.default.email
}

data "google_compute_zones" "available" {
}

output "available" {

value = data.google_compute_zones.available.names

}
