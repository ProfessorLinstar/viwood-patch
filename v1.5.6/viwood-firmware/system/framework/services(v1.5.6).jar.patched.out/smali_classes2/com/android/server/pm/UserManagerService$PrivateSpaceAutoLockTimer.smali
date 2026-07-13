.class public Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput p2, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 0

    .line 721
    iget p0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    return p0
.end method

.method public onAlarm()V
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 727
    const-string v1, "UserManagerService"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-locking private space with user-id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->this$0:Lcom/android/server/pm/UserManagerService;

    iget p0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 729
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void

    .line 732
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is interactive, skipping auto-lock for profile user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
