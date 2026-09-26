# Employee Expense Tracker — Application Design

## 1. Application Overview

**Name:** Employee Expense Tracker
**Platform:** Oracle APEX (version: 26.1.3), 
**Purpose:** Employees submit expenses with receipts; managers approve or reject them; dashboards report spend by category and by month.
---

## 2. Entity-Relationship Design


employees                    expense_categories
┌──────────────┐             ┌──────────────┐
│ employee_id (PK)           │ category_id (PK)│
│ employee_no  │             │ name         │
│ full_name    │             └──────┬───────┘
│ email        │                    │
│ department   │                    │
│ manager_id ──┼──┐ (self-ref)      │
│ app_username │  │                 │
└──────┬───────┘  │                 │
       │          │                 │
       │  ┌───────┘                 │
       │  │                         │
       ▼  ▼                         ▼
       expenses
┌────────────────────┐
│ expense_id (PK)     │
│ employee_id (FK)    │
│ category_id (FK)    │
│ description         │
│ amount              │
│ spent_on            │
│ status              │  -- PENDING / APPROVED / REJECTED
│ receipt_blob        │
│ receipt_name        │
│ receipt_mime        │
│ created_by          │
│ created_on          │
│ approved_by         │
│ approved_on         │
│ reject_reason       │
└────────────────────┘


## 3. Page Map

The application is made up of the following pages.

1.**Expense Entry Form** is a standard Form page used to submit a new expense along with a receipt attachment. It's accessible to Contributors and Administrators.

2.**My Expenses** is an Interactive Report where a user views their own submitted expenses. It's open to all authenticated users.

3.**Expense Search** combines a search region with an Interactive Grid, letting users filter and edit expenses. It only loads data once the Search button is clicked, rather than on page load. Readers can view results, while Contributors can also edit them.

4.**Approval Queue** is an Interactive Report with Approve and Reject buttons, showing pending expenses scoped to a manager's own direct reports. It's restricted to Administrators, or to users with a manager role.

5.**Dashboard** contains two chart regions: a pie chart showing spend by category, and a line chart showing spend by month. It's accessible to Readers and above.

6.**Expense Explorer** is a Faceted Search page that uses auto-generated filters to let users browse and filter expenses. It's accessible to Readers and above.

7.**Access Control** is the auto-generated feature page used to manage users and their assigned roles. It's restricted to Administrators.

---

## 4. Navigation

A Navigation Bar List links: Entry Form → My Expenses → Approval Queue → Dashboard → Explorer.

This was chosen over breadcrumbs because users need direct jumps between peer pages, not a drill-down hierarchy.

---

## 5. Security Model

**Roles** (via the Access Control feature): Administrator, Contributor, Reader.

**Authorization layers:**

1. **Page-level:** an Authorization Scheme restricts who can open each page (see the page map above).
2. **Region-level:** regions either inherit the page's scheme or add a stricter one — for example, a widget visible only to Administrators.
3. **Process-level:** Save and Approve processes carry their own Authorization Scheme, so edits are rejected server-side even if the UI is bypassed.
4. **Row-level (grid):** an Allowed Row Operations Column, computed per user from apex_appl_acl_user_roles, hides edit controls for non-Contributors.
