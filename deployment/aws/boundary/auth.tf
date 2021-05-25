resource "boundary_auth_method_oidc" "oidc" {
  name        = "Adappt Limited Azure SSO"
  description = ""
  type        = "oidc"
  scope_id    = boundary_scope.org.id
  issuer      = "https://sts.windows.net/4acd36da-e183-4bb9-979c-add9146cef0a/"
  client_id   = "9935a423-aeb0-4767-8993-97fafd41b593"
  client_secret = "_S-X38.iW__JB36Msu.TPZwAW0Qrne-220"
  signing_algorithms = ["RS256"]
  api_url_prefix = "https://boundary.pecedu.in"
  is_primary_for_scope = true
}