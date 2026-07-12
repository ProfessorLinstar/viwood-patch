.class public Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;
.super Landroid/os/Handler;
.source "LogcatManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 283
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 277
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 278
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 272
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 273
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    .line 267
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 268
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 262
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 263
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 257
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 258
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void
.end method
