#!/bin/bash

# =====================================================
# Azure RBAC Image Renaming Script
# Standardizes image names to match portfolio convention
# =====================================================

DIR="../assets/img/cloud-security/rbac"

echo "Renaming RBAC images..."

mv "$DIR/rbac_group_creation.png" "$DIR/task1-group-creation.png"

mv "$DIR/rbac_role_assignment.png" "$DIR/task2-role-assignment.png"
mv "$DIR/rbac_assignment_confirmation.png" "$DIR/task2-assignment-confirmation.png"

mv "$DIR/rbac_vm_dashboard.png" "$DIR/task3-vm-dashboard.png"
mv "$DIR/rbac_vm_start.png" "$DIR/task3-vm-start.png"
mv "$DIR/rbac_vm_restricted_action.png" "$DIR/task3-vm-restricted-action.png"

mv "$DIR/rbac_group_roles_overview.png" "$DIR/task4-role-overview.png"

mv "$DIR/rbac_policy_review.png" "$DIR/task5-policy-review.png"
mv "$DIR/rbac_security_center.png" "$DIR/task5-security-center.png"
mv "$DIR/rbac_audit_log.png" "$DIR/task5-audit-log.png"

echo
echo "==================================="
echo "✅ RBAC images renamed successfully!"
echo "==================================="

echo
ls -1 "$DIR"
