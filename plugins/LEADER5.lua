do

local function leader(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "م المطور" then
local S = [[  💯 اوامر المطورين 💯

 🎈-تفعيل البوت  : ↝↜😉
 {لتفعيل البوت ب المجموعه}
 🎈-تعطيل البوت : ↝↜☹️
 {لتعطيل البوت ب المجموعه}
 🎈-اذاعه : ↝↜📻
 {لنشر كلمه ب جميع مجموعات البوت}
 🎈-تشغيل البوت : ↝↜⏳
{ لتشغيل البوت ب المجموعه معينه}
 🎈-ادعبل : ↝↜🚶
{ لطرد البوت من المجموعه}
 🎈-جلب ملف : ↝↜📩
{ لجلب الملف من السيرفر}
 🎈-صنع مجموعه : ↝↜🤖
{لصنع مجموعه من البوت}
🎈 -مسح المعرف  : ↝↜
{لمسح معرف المجموعه}
 🎈-مسح الادمنيه : ↝↜👫
{لمسح الادمنيه في المجموعه}
 🎈-مسح الاداريين : ↝↜👥
{لمسح الاداريين في المجموعه}
 🎈-اضف مطور + الايدي 🛠
(لاضافه مطور للبوت)
🎈-حذف مطور + الايدي❌
(لحذف مطور البوت)
🎈-رد اضف/حذف + الكلمه + الرد❌
(لاضافه رد من الجموعه في البوت)
🎈-تاك الكل 🎐
(للاشاره الئ جميع الاعضاء)
🎈-طرد الكل 😱
(لطرد جميع الاعضا۽)
🎈-حذف مطور + الايدي❌
(لحذف مطور البوت)
🎈-/save plugins /اسم الملف مع. lua
(لاضافه ملف الى السيرفر)
🎈-/delplugin + اسم الملف بدون. Lua
(لحذف الملف من السيرفر)
🎈- كول / اكول / يكول 
(لتكرار الكلمه )
🎈-تنظيف + عدد
(لحذف رسائل المجموعه)

📫run : ↝↜
{لتنشيط سيرفر البوت}
 📫update: ↝↜
{لتحديث سيرفر البوت}
📫redis: ↝↜
{لعمل رديس لسيرفر البوت}
〰🔱〰🔱〰🔱〰🔱〰

]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "ليش تبحبش😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م المطور)$",
},
run = leader 
}
end
