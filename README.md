# Crowdfunding Platform Database System

*A reward-based crowdfunding platform database design with full business logic implementation.*


## 🧑‍💻 Role

**Database Developer**

## 🛠️ Tech Stack

* **MySQL**
* **ER Model Design**
* **Stored Procedures**
* **Hash + Salt Password Security**


## 📌 1. Project Overview

本專案以嘖嘖、flyingV 等回饋型群眾募資平台為原型，實作一套完整的後端資料庫系統，支援：

* 會員註冊 / 登入
* 提案建立與狀態管理
* 贊助流程與限制邏輯
* 提案追蹤機制
* 評論與回覆
* 協同過濾式推薦系統

負責 **資料庫 schema 規劃、ER-Model 設計**，並撰寫 **12 項 Stored Procedures**，確保所有商業流程能以 SQL 自動化執行且符合平台規則。


## 📌 2. Responsibilities

### **1️⃣ ER-Model & Schema Design**

依據平台需求設計資料表及其關聯，包括：

* `Member`
* `Proposal`
* `Proposal_Option`
* `Sponsor_Record`
* `Review`

關聯關係：

* 會員 ↔ 提案：一對多
* 提案 ↔ 選項：一對多
* 會員 ↔ 選項 ↔ 贊助紀錄：多對多（透過 Sponsor_Record）

提案狀態流程寫入邏輯限制：

```
Pre-Publish → Ongoing → Expired → Terminated
(不可逆轉)
```


### **2️⃣ 密碼安全機制：Hash + Salt**

參考 OWASP 推薦做法，實作安全的密碼儲存方式：

* 註冊時：`password + salt → hash`
* 更新密碼時：重新驗證 original hash
* 登入時：比對 hash 值

Hash 與 Salt 的邏輯實作於：

* `sp_RegisterMember`
* `sp_UpdatePwd`
* `sp_Login`


### **3️⃣ Stored Procedures Implementation（12 項完整業務邏輯）**

### ✔ 會員系統

| Procedure           | 說明               |
| ------------------- | ---------------- |
| `sp_RegisterMember` | 註冊會員、檢查 email 重複 |
| `sp_Login`          | 登入會員、比對 hash 密碼  |
| `sp_UpdatePwd`      | 驗證舊密碼後允許更新       |


### ✔ 提案與選項管理

| Procedure                 | 說明               |
| ------------------------- | ---------------- |
| `sp_CreateProposalOption` | 新增提案選項           |
| `sp_UpdateProposalStatus` | 嚴格限制提案狀態遞進、不可逆流程 |


### ✔ 贊助流程

| Procedure                | 說明                           |
| ------------------------ | ---------------------------- |
| `sp_CreateSponsorRecord` | 建立贊助紀錄，並強制遵守「同一選項最多購買 5 件」規則 |


### ✔ 提案追蹤與評論

| Procedure                         | 說明                   |
| --------------------------------- | -------------------- |
| `sp_GetFollowedProposalsByMember` | 撈取會員追蹤且為 Ongoing 的提案 |
| `sp_GetUnrepliedReviews`          | 查找所有會員擁有提案中尚未回覆的評論   |


### ✔ 進階查詢

| Procedure                             | 說明                           |
| ------------------------------------- | ---------------------------- |
| `sp_GetProposalByCompletionRate`      | 依達成率（amount_raised / goal）排序 |
| `sp_GetOngoingProposalOptionbyRating` | 依平均評分排序提案選項                  |


### ✔ 推薦系統

| Procedure                    | 說明                                         |
| ---------------------------- | ------------------------------------------ |
| `sp_GetRecommendedProposals` | 使用協同過濾概念推薦提案。若無贊助紀錄，回傳瀏覽量最高的前五個 Ongoing 提案 |


### ✔ 會員刪除機制

| Procedure         | 說明                                       |
| ----------------- | ---------------------------------------- |
| `sp_DeleteMember` | 移除會員，並處理所有關聯資料，以維護 referential integrity |


## 📌 3. Techniques Used

### 🔧 Database

* MySQL schema 設計
* ER-Model 規劃
* Stored Procedures（封裝商業邏輯）
* 資料一致性管理（FK constraints, cascading logic）
* 聚合查詢、排序、條件過濾
* Transaction / Error Handling

### 🔐 Security

* Hash + Salt 密碼儲存
* Correct hash comparison logic during login / password update
* 參考 OWASP Password Storage Cheat Sheet

### 📊 Business Logic Implementation

* 提案狀態機制不可逆轉
* 達成率 ≥ 90% 自動延長募資一次（可被 stored procedure 使用）
* 同一選項最多購買 5 件限制
* 推薦系統（協同過濾）
* 未回覆評論查詢系統


## 📌 4. Key Takeaways

* 深入理解 SQL 程序化邏輯與資料庫驅動的商業流程設計
* 熟悉多表關聯的資料建模
* 能設計可擴充、可維護的資料庫 Schema
* 將真實平台的複雜規則轉換為 Stored Procedure 的自動化流程
