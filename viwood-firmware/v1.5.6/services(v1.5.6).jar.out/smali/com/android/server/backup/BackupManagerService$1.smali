.class public Lcom/android/server/backup/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$-S5QMtscauAOp22BTub2cVMGVYQ(Lcom/android/server/backup/BackupManagerService$1;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService$1;->lambda$onReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(I)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 151
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/BackupManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService$1;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
