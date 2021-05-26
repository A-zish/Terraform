resource "aws_ebs_volume"  "storage"{
    availability_zone = aws_instance.os.availability_zone
    size  =10
    tags = {
        Name = "ebs_for_terraform_os"
    }
}

resource "aws_volume_attachment" "ebs_att"{
    device_name = "/dev/sdf"
    volume_id = aws_ebs_volume.storage.id
    instance_id = aws_instance.os.id
}