# Gumroad Setup Guide

## Step 1: Create Gumroad Account

1. Go to [gumroad.com](https://gumroad.com)
2. Click "Sign up"
3. Use your email or continue with Google
4. Username: `devforge` (or similar)

---

## Step 2: Configure Store

### Basic Settings
- **Store name**: DevForge AI
- **URL**: gumroad.com/devforge
- **Bio**: "Practical AI agent guides for developers. Built by a senior engineer with 20 years experience."

### Logo & Branding
- Upload logo at: Settings → Appearance
- Recommended: Simple text logo or icon
- Brand color: #667eea (purple/blue)

---

## Step 3: Create Product

### Product Details
- **Name**: AI Agent Starter Kit
- **Price**: $39 (or $49 if launching at full price later)
- **Description**: Use the landing page content
- **Cover image**: Create a simple hero image with "AI Agent Starter Kit"

### Product File
- Upload the `product/` folder contents as ZIP
- Or host files on Google Drive/Gumroad storage

### Options
- [x] Allow free preview (check first chapter)
- [x] Send products via email
- [x] Enable waitlist mode (optional)

---

## Step 4: Landing Page (Optional Custom)

If you want custom landing page:
1. Go to your product → Edit → "Landing page"
2. Paste the HTML from `product/launch/landing.html`
3. Or use Gumroad's built-in page builder

---

## Step 5: Email Setup

1. Go to Settings → Emails
2. Enable "Purchase email" to buyers
3. Custom thank you message with download link

---

## Step 6: Payment Setup

Gumroad handles payments automatically:
- Accepts: Credit card, PayPal, Apple Pay, Google Pay
- For crypto: Enable Ethereum in Settings → Payment methods
- Your ETH address: `0xE177d26d1796bBD0a45Bb65dCb494a4def6957c3`

---

## Step 7: Connect to Landing Page

Replace `https://gumroad.com/devforge` with your actual Gumroad link in:
- `product/launch/landing.html`
- Twitter bio
- All marketing materials

---

## Quick Checklist

- [ ] Account created
- [ ] Store name set
- [ ] Logo uploaded
- [ ] Product created ($39)
- [ ] Files uploaded
- [ ] Landing page customized
- [ ] Email thank-you set
- [ ] Test purchase flow

---

## Alternative: Gumroad Overlays

Instead of custom landing page, use Gumroad's overlay:
```html
<a href="https://gumroad.com/l/ai-agent-starter-kit">
  Get the AI Agent Starter Kit
</a>
```

---

## Support Resources

- [Gumroad Creator Handbook](https://gumroad.com/handbook)
- [Product page tips](https://help.gumroad.com/article/152-product-page)
- [Email customization](https://help.gumroad.com/article/179-customize-emails)

---

## Your Gumroad Link (Update When Ready)

```
https://gumroad.com/l/ai-agent-starter-kit
```
