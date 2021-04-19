# Create SFN Role
resource "aws_iam_role" "sfn_role" {
  name               = "${var.environment}-sfn-role"
  assume_role_policy = file("${path.module}/sfn_policy.json")
}

resource "aws_iam_role_policy_attachment" "sfn-attach" {
  role       = aws_iam_role.sfn_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
}

# Create CW Role
resource "aws_iam_role" "cw_role" {
  name               = "${var.environment}-cw-role"
  assume_role_policy = file("${path.module}/cw_policy.json")
}

resource "aws_iam_role_policy_attachment" "cw-attach" {
  role       = aws_iam_role.cw_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess"
}

# Create Lambda Role
resource "aws_iam_role" "lambda_role" {
  name               = "${var.environment}-lambda-role"
  assume_role_policy = file("${path.module}/lambda_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda-ec2-attach" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}


resource "aws_iam_role_policy_attachment" "lambda-ssm-attach" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}
