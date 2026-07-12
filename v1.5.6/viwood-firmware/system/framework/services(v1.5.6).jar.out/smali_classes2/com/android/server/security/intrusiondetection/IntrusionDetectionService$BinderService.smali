.class public final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;
.super Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;
.source "IntrusionDetectionService.java"


# instance fields
.field public final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V
    .locals 0

    .line 110
    invoke-direct {p0, p2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 111
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->addStateCallback_enforcePermission()V

    .line 118
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->disable_enforcePermission()V

    .line 139
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->enable_enforcePermission()V

    .line 132
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->removeStateCallback_enforcePermission()V

    .line 125
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
