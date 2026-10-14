====== ขั้นตอนการเริ่มต้น Git และบันทึก Commit ======

git status                          = ตรวจสอบสถานะไฟล์ในโปรเจกต์
git init -b main                    = ตรวจสอบสถานะไฟล์ในโปรเจกต์
git config user.name "name..."      = กำหนดชื่อ Commit
git config user.email "email..."    = กำหนดอีเมล Commit
git add .                           = เพิ่มไฟล์ที่เปลี่ยนแปลงทั้งหมดในโฟลเดอร์ปัจจุบัน
git status                          = ตรวจสอบไฟล์
git commit -m "Create button"       = บันทึกการเปลี่ยนแปลงที่ Stage ไว้ และ save ชื่อว่า "Create button"
git log --oneline                   = แสดงประวัติ Commit แบบสั้นๆ
git status อีกรอบ

================== End ==================


====== แก้ไขไฟล์ และ บันทึก ======

git diff (กด q เพื่อออก)          = แสดงความแตกต่างของไฟล์ที่แก้ไข
git add lib/main.dart           = เพิ่มเฉพาะไฟล์ lib/main.dart  เพื่อเตรียม Commit
git commit -m "Text Changed"    = บันทึกการเปลี่ยนแปลง และ save ชื่อว่า "Text Changed"

================== End ==================


====== สร้าง Repo บน Gitgub ======
ก็อปปี้  URL ที่เราสร้าง Repo เช่น https://github.com/weeradonwil/github_lab.git

git remote add origin https://github.com/weeradonwil/github_lab.git = เชื่อมต่อ Git Repository ภายในเครื่องกับ Repository บน GitHub โดยกำหนดชื่อ Remote ว่า origin เพื่อใช้ Push และ Pull โค้ด

git remote -v   = ตรวจสอบรายชื่อ Remote Repository และ URL ที่เชื่อมต่ออยู่ ทั้งสำหรับ Fetch และ Push
git push        = อัปโหลด Commit จาก Branch ขึ้น Github

================== End ==================