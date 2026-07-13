.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;
.super Landroid/hardware/biometrics/AuthenticationStateListener$Stub;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .locals 2

    .line 161
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "AuthenticationStateListener#onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getUserId()I

    move-result p1

    const/4 v1, 0x2

    .line 162
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .locals 2

    .line 177
    invoke-static {}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "AuthenticationStateListener#onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getUserId()I

    move-result p1

    const/4 v1, 0x2

    .line 180
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
