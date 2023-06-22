variable "istest" {
 type = string
 nullable = true
}

# Create new storage bucket in the US multi-region
# with standard storage

resource "google_storage_bucket" "terraformstate" {

  name = var.istest
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
  
}

#resource "google_storage_bucket_object" "terraformstateobject" {

 #          name = "terraform.tfstate"
	#	   source = "terraform.tfstate.backup"
	#	   content_type = "text/plain"
	#	   bucket = "terraformstate_9951"
		   
     #     }
		  
		  


