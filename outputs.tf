output "gpu_server_arn" {
  value       = aws_instance.gpu_dev_server.arn
  description = "GPU Server ARN"
}
