.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$1:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    invoke-static {v0, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->$r8$lambda$q0ZnVkR9_931rJgdT73F384b3ic(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
