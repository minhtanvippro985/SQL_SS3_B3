CREATE DATABASE customer_manage;
USE customer_manage;

-- 1. Tạo bảng khách hàng với hàng chục cột (mô phỏng bảng lớn)
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName NVARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    LastPurchaseDate DATE, -- Ngày mua hàng cuối cùng
    Status VARCHAR(20),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Points INT,
    Address NVARCHAR(255)
);

-- 2. Dữ liệu mẫu với các "Bẫy dữ liệu"
INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
('Nguyễn Văn A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'), -- Khách tiềm năng (hơn 6 tháng)
('Trần Thị B', 'btt@gmail.com', 'Hà Nội', '2026-02-10', 'Active'), -- Mới mua (loại)
('Lê Văn C', NULL, 'Hà Nội', '2025-01-15', 'Active'), -- Lỗi: Không có Email
('Phạm Minh D', 'dpm@gmail.com', 'Hà Nội', '2024-12-01', 'Locked'), -- Lỗi: Tài khoản bị khóa
('Hoàng An E', 'eha@gmail.com', 'TP HCM', '2025-03-01', 'Active'); -- Lỗi: Sai thành phố

SELECT * FROM CUSTOMERS ;

SELECT * FROM CUSTOMERS  WHERE LastPurchaseDate < '2025-10-01' AND Status = 'Active'  AND City = "Hà Nội" AND Email != TRUE

-- input cần quét ở bảng CUSTOMER , output trả ra dữ liệu trong bảng  


-- nếu select*FROM CUSTOMERS , cả bảng dữ liệu chưa đọc lọc sẽ hiện lên 
-- Thêm WHERE và AND để lọc khách hàng
-- AND Status = "active" để kiểm tra xem họ có đang hoạt động không 
-- AND City = "Hà Nội" để kiểm tra xem có phải từ Hà nội không ,
-- AND Email != True để kiểm tra xem họ có email không