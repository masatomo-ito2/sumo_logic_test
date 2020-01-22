provider "sumologic" {
}

resource "sumologic_collector" "example_collector" {
name = "Hosted Collector by Masa"
category = "Networking/Demo/collector"
}

resource "sumologic_http_source" "demo_http_source1" {
name = "HTTP Source 1"
category = "Networking/Demo/source1"
collector_id = sumologic_collector.example_collector.id
}

resource "sumologic_http_source" "demo_http_source2" {
name = "HTTP Source 2"
category = "Networking/Demo/source2"
collector_id = sumologic_collector.example_collector.id
}
