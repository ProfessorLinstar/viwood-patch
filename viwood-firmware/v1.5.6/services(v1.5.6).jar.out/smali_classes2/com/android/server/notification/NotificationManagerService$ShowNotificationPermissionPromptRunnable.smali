.class public Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPkgName:Ljava/lang/String;

.field public final mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

.field public final mTaskId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyInternal;)V
    .locals 0

    .line 9571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9572
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 9573
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 9574
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 9575
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 9580
    instance-of v0, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9584
    :cond_0
    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    .line 9587
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 9593
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public run()V
    .locals 3

    .line 9598
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyInternal;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/policy/PermissionPolicyInternal;->showNotificationPromptIfNeeded(Ljava/lang/String;II)V

    return-void
.end method
