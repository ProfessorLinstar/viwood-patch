.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;
.super Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1034
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSignal(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V

    return-void
.end method
