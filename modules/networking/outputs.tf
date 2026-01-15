output "igw_id" {
  value = aws_internet_gateway.myigw.id
}


output "route_table_id" {
  value = aws_route_table.public.id
}
