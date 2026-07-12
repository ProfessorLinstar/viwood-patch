.class public Lcom/android/server/pm/UserManagerService$7;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$HsDpeSmsJXl5f6TgKfzr72gGBAQ(Lcom/android/server/pm/UserManagerService$7;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$7;->lambda$performReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 6735
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$performReceive$0(I)V
    .locals 1

    .line 6745
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->onUserRemoving(I)V

    .line 6746
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mremoveUserState(Lcom/android/server/pm/UserManagerService;I)V

    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 6744
    new-instance p1, Ljava/lang/Thread;

    iget p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    new-instance p3, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService$7;I)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6747
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
