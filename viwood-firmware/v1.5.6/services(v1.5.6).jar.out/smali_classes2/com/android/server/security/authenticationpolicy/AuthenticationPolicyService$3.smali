.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;
.super Landroid/os/Handler;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/Looper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportBiometricAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V

    return-void

    .line 190
    :cond_2
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportPrimaryAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V

    return-void
.end method
