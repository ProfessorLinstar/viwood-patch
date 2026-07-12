.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;
.super Landroid/os/ICancellationSignal$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1013
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V

    return-void
.end method
