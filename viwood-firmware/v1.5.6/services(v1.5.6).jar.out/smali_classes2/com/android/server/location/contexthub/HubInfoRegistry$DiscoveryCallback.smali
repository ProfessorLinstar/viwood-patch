.class public Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
.super Ljava/lang/Object;
.source "HubInfoRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

.field public final mEndpointId:Ljava/util/Optional;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public final mServiceDescriptor:Ljava/util/Optional;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 82
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 83
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    .line 84
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->attachDeathRecipient()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 94
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    .line 96
    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->attachDeathRecipient()V

    return-void
.end method


# virtual methods
.method public final attachDeathRecipient()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 128
    const-string v0, "HubInfoRegistry"

    const-string v1, "Binder died for discovery callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    return-void
.end method

.method public getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    return-object p0
.end method

.method public isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    const-string p0, "HubInfoRegistry"

    const-string p1, "Callback died, isMatch returning false"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 114
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubServiceInfo;

    .line 118
    iget-object v3, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_4
    return v1
.end method
