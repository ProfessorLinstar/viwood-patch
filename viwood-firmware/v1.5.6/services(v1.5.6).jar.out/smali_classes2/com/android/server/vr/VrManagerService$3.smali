.class public Lcom/android/server/vr/VrManagerService$3;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 444
    invoke-static {p1}, Landroid/service/vr/IVrListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrListener;

    move-result-object p0

    return-object p0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .locals 0

    .line 449
    instance-of p0, p1, Landroid/service/vr/IVrListener;

    return p0
.end method
