
====== ขั้นตอนการเริ่มต้น Git และบันทึก Commit ======

1. git status                          = ตรวจสอบสถานะไฟล์ในโปรเจกต์
2. git init -b main                    = ตรวจสอบสถานะไฟล์ในโปรเจกต์
3. git config user.name "name..."      = กำหนดชื่อ Commit
4. git config user.email "email..."    = กำหนดอีเมล Commit
5. git add .                           = เพิ่มไฟล์ที่เปลี่ยนแปลงทั้งหมดในโฟลเดอร์ปัจจุบัน
6. git status                          = ตรวจสอบไฟล์
7. git commit -m "Create button"       = บันทึกการเปลี่ยนแปลงที่ Stage ไว้ และ save ชื่อว่า "Create button"
8. git log --oneline                   = แสดงประวัติ Commit แบบสั้นๆ
9. git status อีกรอบ

================== End ==================


====== แก้ไขไฟล์ และ บันทึก ======

10. git diff (กด q เพื่อออก)          = แสดงความแตกต่างของไฟล์ที่แก้ไข
11. git add lib/main.dart           = เพิ่มเฉพาะไฟล์ lib/main.dart  เพื่อเตรียม Commit
12. git commit -m "Text Changed"    = บันทึกการเปลี่ยนแปลง และ save ชื่อว่า "Text Changed"

================== End ==================


====== การสร้าง GitHub Repository และเชื่อมต่อ Remote  ======
13. ก็อปปี้  URL ที่เราสร้าง Repo เช่น https://github.com/weeradonwil/github_lab.git

14. git remote add origin https://github.com/weeradonwil/github_lab.git = เชื่อมต่อ Git Repository ภายในเครื่องกับ Repository บน GitHub โดยกำหนดชื่อ Remote ว่า origin เพื่อใช้ Push และ Pull โค้ด

15. git remote -v           = ตรวจสอบรายชื่อ Remote Repository และ URL ที่เชื่อมต่ออยู่

16. git push -u origin main = อัปโหลด Commit จาก Branch main ภายในเครื่องไปยัง GitHub ผ่าน Remote origin พร้อมตั้งค่า Upstream Branch เพื่อให้ครั้งต่อไปใช้เพียง git push ได้

17. git push                = อัปโหลด Commit จาก Branch ขึ้น Github

================== End ==================


============= update code =============

1. git add . 
2. git commit -m "update"
3. git push

================== End ==================