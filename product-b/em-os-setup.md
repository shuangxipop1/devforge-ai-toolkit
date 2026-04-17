# Engineering Manager OS - Database Setup

## Primary Database Structure

### 1. Team Members Database
| Field | Type | Notes |
|-------|------|-------|
| Name | Text | Person's name |
| Role | Select | SWE, Sr SWE, Staff, EM, Tech Lead |
| Level | Select | L3, L4, L5, L6, L7 |
| Tenure | Formula | `dateBetween(created time, now, "days")` |
| Manager | Relation | Points to your manager record |
| Direct Reports | Relation | Reverse relation to people you manage |
| Career Stage | Select | Early, Mid, Senior, Staff, Principal |
| Primary Focus | Text | Current main project/goal |
| 1-on-1 Frequency | Select | Weekly, Biweekly, Monthly |
| Last 1-on-1 | Date | Auto-updated |
| Next 1-on-1 | Date | Auto-updated |

### 2. 1-on-1 Templates Database
| Field | Type | Notes |
|-------|------|-------|
| Title | Text | e.g., "Career Growth Discussion" |
| Category | Select | Career, Performance, Feedback, Personal, Crisis |
| Questions | List | Array of questions to ask |
| Duration | Select | 30min, 45min, 60min |
| Frequency | Select | One-time, Weekly, Monthly |
| Last Used | Date | Auto-updated |
| Notes | Text | Long text for note-taking |

### 3. OKR Tracker Database
| Field | Type | Notes |
|-------|------|-------|
| Objective | Text | High-level goal |
| Quarter | Select | Q1 2024, Q2 2024, etc. |
| Owner | Relation | Team member |
| Key Results | List | Array of measurable KRs |
| Status | Select | Not Started, On Track, At Risk, Complete |
| Progress | Formula | Auto-calculated % |
| Check-in Notes | Text | Weekly updates |

### 4. Meeting Notes Database
| Field | Type | Notes |
|-------|------|-------|
| Meeting Type | Select | 1-on-1, Staff, Retro, Design Review |
| Attendees | Relation | Team members |
| Date | Date | Auto |
| Notes | Text | Long text |
| Action Items | List | Array of todos |
| Follow-up Date | Date | Auto from action items |

### 5. Career Frameworks Database
| Field | Type | Notes |
|-------|------|-------|
| Level | Select | L3, L4, L5, L6, L7 |
| Role | Select | SWE, Sr SWE, Staff, EM |
| Responsibilities | Text | What they own |
| Technical Skills | List | Required technical competencies |
| Soft Skills | List | Required interpersonal skills |
| Growth Criteria | Text | What "exceeds expectations" looks like |

### 6. Hiring Pipeline Database
| Field | Type | Notes |
|-------|------|-------|
| Candidate Name | Text | |
| Position | Select | SWE, Sr SWE, EM, etc. |
| Stage | Select | Applied, Phone Screen, Onsite, Offer, Rejected |
| Source | Select | Referral, LinkedIn, Recruiter, Inbound |
| Interviewers | Relation | Team members doing interviews |
| Score | Number | 1-5 rating |
| Feedback | Text | Detailed notes |
| Decision | Select | Hired, Rejected, Withdrawn |

---

## Dashboard Views

### Weekly Manager Dashboard
```
┌─────────────────────────────────────────────────────┐
│  THIS WEEK                                          │
│  ├─ 1-on-1s Scheduled: [count]                      │
│  ├─ Action Items Due: [count]                       │
│  ├─ OKRs At Risk: [count]                          │
│  └─ Pending Feedback: [count]                       │
├─────────────────────────────────────────────────────┤
│  TEAM HEALTH                                        │
│  [Visual indicators per team member]               │
├─────────────────────────────────────────────────────┤
│  PRIORITIES                                         │
│  [Top 3 priorities this week]                     │
└─────────────────────────────────────────────────────┘
```

---

## Quick Start

1. Duplicate this template
2. Add your team members (fill in Team Members DB)
3. Set up your 1-on-1 templates (customize questions)
4. Import your current OKRs (if any)
5. Start with Weekly Manager Dashboard

---

## Weekly Review Process

Every Friday:
1. Review Team Health indicators
2. Check OKR progress
3. Update any pending action items
4. Schedule next week's priorities
5. Send weekly update to manager (template provided)

---

*From Engineering Manager OS - Questions? Email support@devforge.ai*
