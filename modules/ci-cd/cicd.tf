resource "aws_s3_bucket" "ce_s3bucket" {
  bucket = "cautious-enigma-s3bucket"
}

resource "aws_s3_bucket_acl" "ce_s3bucket_acl" {
  bucket = aws_s3_bucket.ce_s3bucket.id
  acl    = "private"
}
resource "aws_codebuild_project" "ce_codebuild" {
  name          = "cautious-enigma-project"
  description   = "cautious-enigma-project"
  build_timeout = "60"
  service_role  = aws_iam_role.example.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  cache {
    type     = "S3"
    location = aws_s3_bucket.ce_s3bucket.bucket
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:1.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

    environment_variable {
      name  = "SOME_KEY1"
      value = "SOME_VALUE1"
    }

    environment_variable {
      name  = "SOME_KEY2"
      value = "SOME_VALUE2"
      type  = "PARAMETER_STORE"
    }
  }

  logs_config {
    cloudwatch_logs {
      group_name  = "log-group"
      stream_name = "log-stream"
    }

    s3_logs {
      status   = "ENABLED"
      location = "${aws_s3_bucket.ce_s3bucket.id}/build-log"
    }
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/martin40701/cautious-enigma.git"
    git_clone_depth = 1

    git_submodules_config {
      fetch_submodules = true
    }
  }

  source_version = "master"

  vpc_config {
    vpc_id = var.vpc_id

    subnets = [
      var.private_subnet.id
    ]

    security_group_ids = var.security_group.id
  }

  tags = {
    Environment = "Cautious Enigma"
  }
}
