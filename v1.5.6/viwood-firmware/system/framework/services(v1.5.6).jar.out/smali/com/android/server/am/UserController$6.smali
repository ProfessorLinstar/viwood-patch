.class public Lcom/android/server/am/UserController$6;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic val$finishUserStoppedAsync:Ljava/lang/Runnable;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V
    .locals 0

    .line 1302
    iput p2, p0, Lcom/android/server/am/UserController$6;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$6;->val$finishUserStoppedAsync:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "broadcast-ACTION_SHUTDOWN-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/UserController$6;->val$userId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-[stopUser]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/server/am/UserController$6;->val$userId:I

    invoke-static {p1, p2}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(Ljava/lang/String;I)V

    .line 1307
    iget-object p0, p0, Lcom/android/server/am/UserController$6;->val$finishUserStoppedAsync:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
