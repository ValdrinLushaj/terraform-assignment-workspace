module "valdrin-module" {
  source  = "app.terraform.io/devops-training-valdrin/valdrin-module/assignment"
  version = "1.0.0"
  # insert required variables here

  user_name   = "valdrin-assignment-user"
  policy_name = "valdrin-assignment-policy"
  policy_document = {
    Version = "2012-10-17"
    Statement = [
      #   {
      #     Action = [
      #       "ec2:*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers",
      #       "route53:*", "route53domains:*", "cloudfront:ListDistributions", "elasticloadbalancing:DescribeLoadBalancers",
      #       "elasticbeanstalk:DescribeEnvironments", "cloudwatch:*", "sns:*"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "ec2:Describe*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "iam:ChangePassword"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "s3:"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "ec2:*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "acm:*"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   },
      #   {
      #     Action = [
      #       "iam:*"
      #     ]
      #     Effect   = "Allow"
      #     Resource = "*"
      #   }
      {
        Action = [
          "ec2:*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:ChangePassword"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }
}
