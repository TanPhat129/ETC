# Social Data Collector

Công cụ hỗ trợ thu thập, xử lý và lưu trữ dữ liệu từ các nguồn mạng xã hội phục vụ hoạt động phân tích dữ liệu.

## Yêu cầu hệ thống

- Windows 10/11 64-bit
- Google Chrome
- PostgreSQL
- Kết nối Internet
- Google Service Account nếu sử dụng chức năng ghi dữ liệu vào Google Sheets

## Thiết lập trên máy mới

1. Tải hoặc clone repository.
2. Cài đặt và khởi động PostgreSQL.
3. Tạo database và cập nhật chuỗi kết nối trong file `.env`.
4. Sao chép `.env.example` thành `.env` và điền các giá trị cấu hình cần thiết.
5. Nếu sử dụng Google Sheets, đặt file service account tại:

   `.secrets/google-service-account.json`

6. Chia sẻ Google Sheet cho email của Service Account và cấu hình `GOOGLE_SHEET_ID` trong `.env`.
7. Kiểm tra cấu hình tài khoản trong `config/account_pools.yaml`.
8. Chạy ứng dụng bằng `run.bat` hoặc `SocialDataCollector.exe`.
9. Ở lần chạy đầu tiên, đăng nhập các tài khoản Facebook cần sử dụng để tạo browser profile/session cục bộ.

## Lưu ý bảo mật

Không commit các file chứa thông tin nhạy cảm lên GitHub, bao gồm:

- `.env`
- thư mục `.secrets/`
- Google Service Account JSON
- browser profile/session Facebook
- log và dữ liệu thu thập thực tế

Các file này đã được loại trừ thông qua `.gitignore`.

## Cấu trúc chính

```text
project/
├── config/
├── data/
├── logs/
├── .secrets/
├── SocialDataCollector.exe
├── run.bat
├── .env.example
├── .gitignore
└── README.md
```

