.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "IContextHubWrapper.java"


# instance fields
.field public mHub:Landroid/hardware/contexthub/V1_1/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V
    .locals 0

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 1209
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-void
.end method


# virtual methods
.method public getContextHubs()Landroid/util/Pair;
    .locals 5

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {p0}, Landroid/hardware/contexthub/V1_1/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 1215
    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1217
    :cond_0
    new-instance p0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 1

    .line 1238
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1241
    const-string p1, "IContextHubWrapper"

    const-string v0, "Failed to send setting change to Contexthub"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
