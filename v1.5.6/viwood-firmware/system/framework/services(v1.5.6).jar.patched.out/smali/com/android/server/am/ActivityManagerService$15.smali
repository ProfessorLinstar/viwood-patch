.class public Lcom/android/server/am/ActivityManagerService$15;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$finishCallback:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 16116
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$finishCallback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    .line 16119
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$15;->val$finishCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 16120
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void
.end method
