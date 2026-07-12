.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;
.super Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .locals 0

    .line 353
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->disableSecureLockDevice_enforcePermission()V

    .line 354
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result p0

    return p0
.end method

.method public enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .locals 0

    .line 338
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->enableSecureLockDevice_enforcePermission()V

    .line 339
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result p0

    return p0
.end method
