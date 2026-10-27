# Hệ thống quản trị hạ tầng GreenTech

Hệ thống lọc nhật ký (log) tự động và quản lý danh mục thiết bị cho 100 trạm cảm biến IoT của Startup GreenTech.

## Cấu trúc thư mục

| Thư mục | Nội dung |
|---|---|
| `docs/` | Tài liệu: README.md, srs-he-thong.docx |
| `scripts/` | Script tự động hóa: auto_report.bat |
| `data/` | Dữ liệu: log-he-thong.log, quan-ly-thiet-bi.xlsx |
| `backup/` | Báo cáo đầu ra: bao-cao-su-co.txt |

## Cách chạy script lọc log

Mở CMD tại thư mục gốc của dự án, sau đó chạy:

```bat
cd scripts
auto_report.bat
```

Kết quả được ghi nối tiếp (`>>`) vào `backup/bao-cao-su-co.txt`. Script sẽ hỏi xác nhận trước khi xóa bất kỳ file nào.

## Checklist kiểm tra thiết bị

- [ ] Kiểm tra kết nối cảm biến
- [ ] Kiểm tra dung lượng RAM còn trống
- [ ] Kiểm tra dung lượng ổ cứng (SSD/HDD)
- [ ] Chạy `auto_report.bat` và đọc `bao-cao-su-co.txt`
- [ ] Sao lưu báo cáo vào `backup/`

## Bảng thông số phần cứng

| Mã linh kiện | Tên thiết bị | Loại lưu trữ |
|---|---|---|
| LK001 | Raspberry Pi 4 (4GB) | SSD |
| LK002 | Raspberry Pi 4 (8GB) | SSD |
| LK003 | Jetson Nano | SSD |
| LK004 | Industrial Gateway X1 | HDD |

Danh sách đầy đủ xem trong `data/quan-ly-thiet-bi.xlsx`.
