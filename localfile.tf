resource "local_file" "hosts_cfg" {
  content = templatefile("hosts.tpl",
    {
      server1 = aws_instance.web-1.public_ip
      server2 = aws_instance.web-2.public_ip
      server3 = aws_instance.web-3.public_ip
    }
  )
  filename = "hosts.cfg"
}
