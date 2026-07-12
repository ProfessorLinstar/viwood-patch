.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManagerService.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onConnected(Landroid/os/IInterface;)V
    .locals 0

    .line 565
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->onConnected(Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method

.method public onConnected(Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .locals 1

    .line 570
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 571
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetRemoteProcessingService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;

    move-result-object p0

    .line 570
    invoke-interface {p1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    .line 572
    invoke-interface {p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->ready()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 574
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to send connected event"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
