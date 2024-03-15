// The kubernetes cluster using default node pool
resource "google_container_cluster" "demo-gke" {
    name = "demo-cluster"
    location = "us-central1-a"
    initial_node_count = 2

    node_config {
        oauth_scopes =[
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]

        tags = ["demo-cluster"]
        machine_type = "n1-standard-1"
        
    }

}