# Postmortem: Unexpected Downtime on Web Service

![G9gCNQQ](https://github.com/nuuxcode/alx-system_engineering-devops/assets/24565896/8ad5fb26-f1be-4871-b51b-6c41e28fbb54)

## Issue Summary

- **Duration:**
  - Start Time: October 15, 2023, 14:30 (UTC)
  - End Time: October 15, 2023, 15:15 (UTC)
- **Impact:**
  - The web service experienced downtime, resulting in connection errors for users.
  - Approximately 20% of users were affected during the outage.
  - The Nginx service on the Ubuntu container was down, resulting in connection errors for users attempting to access the web server.
- **Root cause:**
  - The absence of a symbolic link between the sites-available and sites-enabled directories prevented Nginx from properly serving content on port 80.

## Timeline

- **Detection:**
  - The issue was detected at October 15, 2023, 14:30 (UTC) through automated monitoring alerts.
- **Actions Taken:**
  - Investigated server logs for any unusual activity or errors.
  - Assumed the issue might be related to a recent deployment.
- **Misleading Paths:**
  - Initially explored database connections, suspecting issues with query performance.
  - Checked for recent code changes in the deployed version.
- **Escalation:**
  - The incident was escalated to the Development team after initial investigation.
- **Resolution:**
  - Rolled back to the previous stable version of the application.
  - Restarted the necessary services to apply the rollback.

## Root Cause and Resolution

- **Root Cause:**
  - A recent code deployment introduced an unforeseen bug, causing the application to crash under certain conditions.
- **Resolution:**
  - Rolled back to the previous version, eliminating the introduced bug.
  - Implemented additional automated testing for edge cases to catch similar issues in the future.

## Corrective and Preventative Measures

- **Improvements/Fixes:**
  - Enhance automated testing procedures to include more exhaustive scenarios.
  - Strengthen monitoring for application health and performance.
- **Tasks:**
  - Conduct a thorough review of the deployment process to ensure code changes are adequately tested before release.
  - Schedule regular audits of the application's error logs to proactively identify potential issues.
  - Implement a post-deployment validation step to verify the stability of the application.

In conclusion, the unexpected downtime was promptly addressed by rolling back to a stable version and implementing additional testing measures. The incident underscores the importance of thorough testing in the deployment process and ongoing vigilance through robust monitoring. The corrective and preventative measures outlined aim to fortify the system against similar issues in the future, ensuring a more resilient and reliable web service.
