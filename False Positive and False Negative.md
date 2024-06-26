---
tags:
  - false-positive
  - false-negative
  - statistics
link: 
aliases:
---


## False Positive (**Type I Error**)

- **Definition**: A false positive occurs when a test or classification model incorrectly identifies a condition or attribute as present when it is actually absent.
- **Example**: If a medical test indicates that a person has a disease when they actually do not, this is a false positive.
- **Implications**: False positives can lead to unnecessary stress, additional tests, treatments, or interventions that are not needed.



## False Negative (**Type II Error**)

- **Definition**: A false negative occurs when a test or classification model incorrectly identifies a condition or attribute as absent when it is actually present.
- **Example**: If a medical test indicates that a person does not have a disease when they actually do, this is a false negative.
- **Implications**: False negatives can result in a lack of necessary treatment or intervention, leading to potentially severe consequences if the condition goes untreated.

## Table

|                   | **Condition Present** | **Condition Absent** |
| ----------------- | --------------------- | -------------------- |
| **Test Positive** | True Positive         | False Positive       |
| **Test Negative** | False Negative        | True Negative        |

- **True Positive (TP)**: The test correctly identifies the presence of the condition.
- **True Negative (TN)**: The test correctly identifies the absence of the condition.
- **False Positive (FP)**: The test incorrectly identifies the condition as present.
- **False Negative (FN)**: The test incorrectly identifies the condition as absent.



## Balancing the Errors

Often, there's a trade-off between false positives and false negatives. Depending on the context, you might prioritize reducing one type of error over the other. For example:

- In critical disease screening, reducing false negatives is usually more important to ensure no case is missed.
- In spam email filtering, reducing false positives might be more important to avoid legitimate emails being marked as spam.