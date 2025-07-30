resource "aws_eip" "eks_ngw_eip_1a" {
 // vpc = true

  tags = merge(
    local.tags, {
      name = "$(var.project_name)-eip-1a "
    }
  )
}


resource "aws_eip" "eks_ngw_eip_1b" {
  //vpc = true

  tags = merge(
    local.tags, {
      name = "$(var.project_name)-eip-1b "
    }
  )
}


