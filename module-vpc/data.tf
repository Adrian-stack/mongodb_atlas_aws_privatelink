data "aws_iam_policy_document" "policy" {
  statement {
    sid    = "VisualEditor0"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]

    principals {
      identifiers = ["lambda.amazonaws.com"]
      type        = "Service"
    }
  }
}