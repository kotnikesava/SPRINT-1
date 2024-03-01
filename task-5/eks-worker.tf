resource "aws_eks_node_group" "main" {

  cluster_name    = aws_eks_cluster.main.name
  node_group_name = var.project_name
  subnet_ids      = aws_subnet.private[*].id
  node_role_arn   = aws_iam_role.node.arn

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  remote_access {
    ec2_ssh_key = "pemkey"
  }

  update_config {
    max_unavailable = 1
  }

  ami_type       = "AL2_x86_64"
  disk_size      = 20
  capacity_type  = "ON_DEMAND"
  instance_types = var.instance_types

  depends_on = [
    aws_iam_role_policy_attachment.node_eksworkernode
  ]
}

resource "aws_iam_role" "node" {
  name               = "${var.project_name}-worker-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_node.json
  tags = merge(var.common_tags, {
    "Name" = "${var.project_name}-worker-role"
  })
}

resource "aws_iam_role_policy_attachment" "node_eksworkernode" {
  for_each   = var.eks_node_role_polices
  role       = aws_iam_role.node.name
  policy_arn = each.value
}