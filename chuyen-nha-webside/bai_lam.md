# BÀI LÀM – HACKATHON 02

  

-  **Mã đề:** 10

-  **Họ tên:**Phạm Vũ Tuấn Kiệt

-  **Lớp:**CNTT2

-  **Link repository:**https://github.com/slendynew34/CNTT2_Nhap-mon-CNTT_Hackathon02

-  **Hệ điều hành (Windows/macOS):**Window

  

## 4.2. Thao tác máy tính cơ bản bằng CLI

  

### Các lệnh đã chạy
```shell
PS C:\Users\X\Desktop\chuyen-nha-webside> pwd

Path
----
C:\Users\X\Desktop\chuyen-nha-webside

PS C:\Users\X\Desktop\chuyen-nha-webside> Get-ChildItem -Recurse -Force


    Directory: C:\Users\X\Desktop\chuyen-nha-webside


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:42 PM                data
d-----        11/11/2026   1:38 PM                docs
d-----        11/11/2026   1:39 PM                evidence
d-----        11/11/2026   1:42 PM                logs
d-----         11/3/2026   7:08 AM                web
-a----         11/3/2026   7:08 AM             70 .env
-a----         11/3/2026   7:08 AM           2410 bai_lam.md
-a----         11/3/2026   7:08 AM            155 checklist_chuyen_nha.txt
-a----         11/3/2026   7:08 AM             22 temp_010.tmp


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            973 request.log


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   7:08 AM                images
-a----         11/3/2026   7:08 AM            587 app.js
-a----         11/3/2026   7:08 AM            544 index.html
-a----         11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           3054 logo-movefast.png

PS C:\Users\X\Desktop\chuyen-nha-webside> mv checklist_chuyen_nha.txt docs/

PS C:\Users\X\Desktop\chuyen-nha-webside> mkdir backup


    Directory: C:\Users\X\Desktop\chuyen-nha-webside


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:51 PM                backup

PS C:\Users\X\Desktop\chuyen-nha-webside> cp data/hop_dong_thang_10.xlsx backup/

PS C:\Users\X\Desktop\chuyen-nha-webside> rm .tmp
PS C:\Users\X\Desktop\chuyen-nha-webside> cd logs
PS C:\Users\X\Desktop\chuyen-nha-webside\logs> ls


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            973 request.log


PS C:\Users\X\Desktop\chuyen-nha-webside\logs> cd ..
```

  

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

  

```text

PS C:\Users\X\Desktop\chuyen-nha-webside> Get-ChildItem -Recurse -Force


    Directory: C:\Users\X\Desktop\chuyen-nha-webside


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:53 PM                backup
d-----        11/11/2026   1:42 PM                data
d-----        11/11/2026   1:50 PM                docs
d-----        11/11/2026   1:39 PM                evidence
d-----        11/11/2026   1:42 PM                logs
d-----         11/3/2026   7:08 AM                web
-a----         11/3/2026   7:08 AM             70 .env
-a----         11/3/2026   7:08 AM           2410 bai_lam.md
-a----         11/3/2026   7:08 AM             22 temp_010.tmp


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            155 checklist_chuyen_nha.txt


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            973 request.log


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   7:08 AM                images
-a----         11/3/2026   7:08 AM            587 app.js
-a----         11/3/2026   7:08 AM            544 index.html
-a----         11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\X\Desktop\chuyen-nha-webside\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           3054 logo-movefast.png

```

  

## 4.3. Lọc log truy cập website

  

### a) Lệnh lọc các dòng status=500

  

```shell

PS C:\Users\X\Desktop\chuyen-nha-webside> Get-Content logs/request.log | Select-String "status=500"

2026-10-28 08:09:39 POST /api/dat-xe status=500
2026-10-28 08:13:50 POST /api/thanh-toan status=500
2026-10-28 08:16:01 POST /api/tinh-quang-duong status=500
2026-10-28 08:18:12 POST /api/dat-xe status=500
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:47:51 POST /api/thanh-toan status=500

```

  

### 2 dòng đầu tiên trong logs/loi_500.txt

  

```text

2026-10-28 08:09:39 POST /api/dat-xe status=500
2026-10-28 08:13:50 POST /api/thanh-toan status=500  

```

  

### b) Lệnh đếm số dòng status=404 và kết quả

  

```shell

PS C:\Users\X\Desktop\chuyen-nha-webside> Get-Content logs/request.log | Select-String "status=404" | Measure-Object


Count    : 4
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

  

```text

Count    : 4

```

  

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

  

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

  

```shell

# Ghi lệnh vào đây (xoá dòng này)

  

```

  

### Nội dung file logs/tong_hop.txt

  

```text
=== BAO CAO SU CO WEBSITE ===
2026-10-28 08:28:45 GET /dat-xe-cu status=404
2026-10-28 08:41:29 GET /khuyen-mai-cu status=404
2026-10-28 08:50:02 GET /khuyen-mai-cu status=404
2026-10-28 09:05:46 GET /tin-tuc status=404
2026-10-28 08:09:39 POST /api/dat-xe status=500
2026-10-28 08:13:50 POST /api/thanh-toan status=500
2026-10-28 08:16:01 POST /api/tinh-quang-duong status=500
2026-10-28 08:18:12 POST /api/dat-xe status=500
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:47:51 POST /api/thanh-toan status=500
```

  

## 4.5. README.md và bảo vệ thông tin bí mật

  

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

  

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote

- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)

- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

  

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

  

### Bảng lỗi

  

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| - | - | - | - |
| 1 | network| logo.png|Mở web index.html bằng VS Code, tại dòng 10 có đoạn src="images/logo.jpg"; thay logo.jpg bằng đúng tên file ảnh trong thư mục web/images. Lưu file, tải lại trang (Windows: Ctrl + Shift + R; macOS: Cmd + Shift + R) để logo hiển thị. |
| 2 | console|Hien thi goi |điền phần Báo cáo lỗi trong mục 4.6 của bai_lam.md gồm 4 phần Context, Expected, Actual, Log (Log chép nguyên văn dòng lỗi ReferenceError trong tab Console). |

  

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

  

### Báo cáo lỗi gửi trưởng nhóm

  

-  **Context:**

-  **Expected:**

-  **Actual:**

-  **Log:**

  

### Câu tìm kiếm Google

  

```text

(Ghi câu tìm kiếm vào đây – xoá dòng này)

  

```

  

## 4.7. Excel

  

> Phần Excel được chấm trực tiếp trên file `data/hop_dong_thang_10.xlsx`, không cần ghi vào đây.