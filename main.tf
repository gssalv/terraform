resource "google_service_account" "sa_repository_test" {
  account_id   = "sa-repo2"
  display_name = "Service Account Repository"
}

resource "google_project_iam_binding" "repository_permission" {
  project = var.google_project
  role = "roles/containerregistry.ServiceAgent"
    members = [google_service_account.sa_repository_test.member]
}

resource "google_project_iam_binding" "repository_permission_reg" {
  project = var.google_project
  role = "roles/artifactregistry.createOnPushRepoAdmin"
 members = [google_service_account.sa_repository_test.member]
}
