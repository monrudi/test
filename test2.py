const { test, expect } = require('@playwright/test');

test('test', async ({ page }) => {

  // Go to https://ifwd.fwd.co.th/easy-e-life/product-detail
  await page.goto('https://ifwd.fwd.co.th/easy-e-life/product-detail');

  // Click [data-test-id="link-to-premium-calculate-page"]
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/policy-benefit' }*/),
    page.click('[data-test-id="link-to-premium-calculate-page"]')
  ]);

  // Click span:has-text("เพศหญิง")
  await page.click('span:has-text("เพศหญิง")');

  // Click text=เดือน
  await page.click('text=เดือน');

  // Click input[name="dateOfBirth"]
  await page.click('input[name="dateOfBirth"]');

  // Fill input[name="dateOfBirth"]
  await page.fill('input[name="dateOfBirth"]', '17');

  // Fill :nth-match(input[name="dateOfBirth"], 2)
  await page.fill(':nth-match(input[name="dateOfBirth"], 2)', '12');

  // Fill :nth-match(input[name="dateOfBirth"], 3)
  await page.fill(':nth-match(input[name="dateOfBirth"], 3)', '2533');

  // Click [data-test-id="button-submit-package"]
  await page.click('[data-test-id="button-submit-package"]');

  // Click [data-test-id="package-price-item"]
  await page.click('[data-test-id="package-price-item"]');

  // Click button:has-text("ซื้อออนไลน์")
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/application/health-question' }*/),
    page.click('button:has-text("ซื้อออนไลน์")')
  ]);

  // Click input[name="height"]
  await page.click('input[name="height"]');

  // Fill input[name="height"]
  await page.fill('input[name="height"]', '160');

  // Click input[name="weight"]
  await page.click('input[name="weight"]');

  // Fill input[name="weight"]
  await page.fill('input[name="weight"]', '50');

  // Click [data-test-id="button-health-question-next"]
  await page.click('[data-test-id="button-health-question-next"]');

  // Click text=โรคเอดส์ หรือภูมิคุ้มกันบกพร่อง โรคมะเร็ง โรคหัวใจ โรคเส้นเลือดหัวใจตีบ โรคเบาหว
  await page.click('text=โรคเอดส์ หรือภูมิคุ้มกันบกพร่อง โรคมะเร็ง โรคหัวใจ โรคเส้นเลือดหัวใจตีบ โรคเบาหว');

  // Click [data-test-id="button-submit-health-question"]
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/application/fatca' }*/),
    page.click('[data-test-id="button-submit-health-question"]')
  ]);

  // Click text=ไม่เป็น
  await page.click('text=ไม่เป็น');

  // Click text=ไม่เป็น
  await page.click('text=ไม่เป็น');

  // Click text=ไม่มี
  await page.click('text=ไม่มี');

  // Click [data-test-id="button-submit-fatca"]
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/application/kyc' }*/),
    page.click('[data-test-id="button-submit-fatca"]')
  ]);

  // Click [placeholder="คำนำหน้าชื่อ"]
  await page.click('[placeholder="คำนำหน้าชื่อ"]');

  // Click text=นางสาว
  await page.click('text=นางสาว');

  // Click input[name="fname"]
  await page.click('input[name="fname"]');

  // Fill input[name="fname"]
  await page.fill('input[name="fname"]', 'สมใจ');

  // Click input[name="lname"]
  await page.click('input[name="lname"]');

  // Fill input[name="lname"]
  await page.fill('input[name="lname"]', 'สกุลทอง');

  // Click input[name="idCard"]
  await page.click('input[name="idCard"]');

  // Fill input[name="idCard"]
  await page.fill('input[name="idCard"]', '');

  // Double click input[name="idCard"]
  await page.dblclick('input[name="idCard"]');

  // Fill input[name="idCard"]
  await page.fill('input[name="idCard"]', '');

  // Double click input[name="idCard"]
  await page.dblclick('input[name="idCard"]');

  // Click text=เลขหลังบัตรประชาชน
  await page.click('text=เลขหลังบัตรประชาชน');

  // Click text=เลขบัตรประชาชน
  await page.click('text=เลขบัตรประชาชน');

  // Fill input[name="idCard"]
  await page.fill('input[name="idCard"]', '');

  // Click input[name="lname"]
  await page.click('input[name="lname"]');

  // Fill input[name="lname"]
  await page.fill('input[name="lname"]', 'สกุลทองสม');

  // Click input[name="idCard"]
  await page.click('input[name="idCard"]');

  // Fill input[name="idCard"]
  await page.fill('input[name="idCard"]', '');

  // Click input[name="fname"]
  await page.click('input[name="fname"]');

  // Fill input[name="fname"]
  await page.fill('input[name="fname"]', 'สมใจ');

  // Click text=เลขบัตรประชาชน
  await page.click('text=เลขบัตรประชาชน');

  // Fill input[name="idCard"]
  await page.fill('input[name="idCard"]', '1-7298-00102-42-8');

  // Click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]');

  // Fill input[name="laserIdCard"]
  await page.fill('input[name="laserIdCard"]', 'xxx-xxxxxx');

  // Click form >> :nth-match(svg, 4)
  await page.click('form >> :nth-match(svg, 4)');

  // Click [data-test-id="button-submit-personal-info"]
  await page.click('[data-test-id="button-submit-personal-info"]');

  // Double click input[name="laserIdCard"]
  await page.dblclick('input[name="laserIdCard"]');

  // Triple click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]', {
    clickCount: 3
  });

  // Click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]');

  // Triple click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]', {
    clickCount: 3
  });

  // Click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]');

  // Double click input[name="laserIdCard"]
  await page.dblclick('input[name="laserIdCard"]');

  // Click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]');

  // Click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]');

  // Triple click input[name="laserIdCard"]
  await page.click('input[name="laserIdCard"]', {
    clickCount: 3
  });

  // Fill input[name="laserIdCard"]
  await page.fill('input[name="laserIdCard"]', 'jt0-0707563-50');

  // Click [data-test-id="button-submit-personal-info"]
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/application/failed/idcard' }*/),
    page.click('[data-test-id="button-submit-personal-info"]')
  ]);

  // Click text=กลับไปแก้ไขข้อมูล
  await Promise.all([
    page.waitForNavigation(/*{ url: 'https://ifwd.fwd.co.th/easy-e-life/application/kyc' }*/),
    page.click('text=กลับไปแก้ไขข้อมูล')
  ]);

});