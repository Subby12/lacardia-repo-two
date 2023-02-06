resource "aws_iam_user" "lacardia-users" {
  count = length(var.iamuser)
  name  = element(var.iamuser, count.index)
}

resource "aws_iam_user_policy_attachment" "lacardia-users" {
  count      = length(var.iamuser)
  user       = element(aws_iam_user.lacardia-users.*.name, count.index)
  policy_arn = aws_iam_policy.userpasschange.arn
}