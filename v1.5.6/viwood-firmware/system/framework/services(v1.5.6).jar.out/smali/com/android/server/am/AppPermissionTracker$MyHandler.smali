.class public Lcom/android/server/am/AppPermissionTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppPermissionTracker.java"


# instance fields
.field public mTracker:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 1

    .line 412
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 413
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 418
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleOpChanged(Lcom/android/server/am/AppPermissionTracker;IILjava/lang/String;)V

    return-void

    .line 428
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsChanged(Lcom/android/server/am/AppPermissionTracker;I)V

    return-void

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsDestroy(Lcom/android/server/am/AppPermissionTracker;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleAppOpsDestroy(Lcom/android/server/am/AppPermissionTracker;)V

    return-void

    .line 420
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleAppOpsInit(Lcom/android/server/am/AppPermissionTracker;)V

    .line 421
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V

    return-void
.end method
