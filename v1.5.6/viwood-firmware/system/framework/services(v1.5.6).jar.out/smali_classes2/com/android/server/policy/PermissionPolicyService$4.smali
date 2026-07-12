.class public Lcom/android/server/policy/PermissionPolicyService$4;
.super Landroid/content/BroadcastReceiver;
.source "PermissionPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 532
    const-string p1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$munregisterCarrierPrivilegesCallback(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 536
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$4;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/policy/PermissionPolicyService;)V

    return-void
.end method
