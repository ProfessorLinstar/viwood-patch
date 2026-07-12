.class public Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "AmbientContextManagerService.java"


# instance fields
.field public final synthetic val$resultPendingIntent:Landroid/app/PendingIntent;

.field public final synthetic val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 542
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$resultPendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$statusCallback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvents(Ljava/util/List;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendDetectionResultIntent(Landroid/app/PendingIntent;Ljava/util/List;)V

    return-void
.end method

.method public onRegistrationComplete(I)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$statusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void
.end method
