resource "github_repository" "Terraform-first-repo" {
  name        = "First-repo-from-terraform"
  description = "My First Repo for infrastructure creation "

  visibility = "public"
  auto_init=true

}

output "terraform-first-repo-url"{
    value = github_repository.terraform-first-repo-url
}