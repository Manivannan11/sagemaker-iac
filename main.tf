# Create IAM user named shiva
resource "aws_iam_user" "shiva" {
  name = "shiva"
  path = "/"
  force_destroy = true
}

# (Optional) Attach an inline policy or predefined policy to give permissions
# Example: AdministratorAccess
resource "aws_iam_user_policy_attachment" "shiva_admin_policy" {
  user       = aws_iam_user.shiva.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}