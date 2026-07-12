.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/IIntentSender$Stub;
.source "DevicePolicyManagerService.java"


# instance fields
.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 2629
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2633
    const-string p1, "android.content.pm.extra.STATUS"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2635
    const-string p2, "DevicePolicyManager"

    if-nez p1, :cond_0

    .line 2636
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Package %s uninstalled for user %d"

    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2638
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to uninstall %s; status: %d"

    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
