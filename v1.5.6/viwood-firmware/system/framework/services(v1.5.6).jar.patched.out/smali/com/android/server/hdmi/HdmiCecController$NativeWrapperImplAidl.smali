.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

.field public mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 983
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 984
    const-string v0, "HDMI Connection or CEC service died, reconnecting"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    .line 987
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    :cond_0
    return-void
.end method

.method public connectToHal()Z
    .locals 5

    .line 951
    const-string v0, "Couldn\'t link to death : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 952
    invoke-static {v1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 955
    const-string p0, "Could not initialize HDMI CEC AIDL HAL"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 959
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 961
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 964
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 965
    invoke-static {v1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    if-nez v1, :cond_1

    .line 968
    const-string p0, "Could not initialize HDMI Connection AIDL HAL"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 972
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 974
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public enableCec(Z)V
    .locals 1

    .line 1084
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->enableCec(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1086
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableCec : "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableSystemCecControl(Z)V
    .locals 1

    .line 1093
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->enableSystemCecControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1095
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableSystemCecControl : "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableWakeupByOtp(Z)V
    .locals 1

    .line 1075
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->enableWakeupByOtp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1077
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableWakeupByOtp : "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public nativeAddLogicalAddress(I)I
    .locals 1

    .line 1026
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->addLogicalAddress(B)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1028
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to add a logical address : "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0
.end method

.method public nativeClearLogicalAddress()V
    .locals 2

    .line 1036
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->clearLogicalAddress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 1038
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to clear logical address : "

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public nativeEnableAudioReturnChannel(IZ)V
    .locals 0

    .line 1111
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->enableAudioReturnChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1113
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to enable/disable ARC : "

    invoke-static {p2, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public nativeGetHpdSignalType(I)I
    .locals 2

    .line 1171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->getHpdSignal(I)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get HPD signal type for portId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Exception: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return v0
.end method

.method public nativeGetPhysicalAddress()I
    .locals 2

    .line 1045
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->getPhysicalAddress()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 1047
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get physical address : "

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const p0, 0xffff

    return p0
.end method

.method public nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 10

    const/4 v0, 0x0

    .line 1120
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 1121
    invoke-interface {p0}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->getPortInfo()[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    move-result-object p0

    .line 1122
    array-length v1, p0

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1124
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, p0, v3

    .line 1125
    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    iget v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    iget-byte v8, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->type:B

    iget v9, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 1129
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    .line 1130
    invoke-virtual {v6, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 1131
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    iget-boolean v5, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 1132
    invoke-virtual {v6, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    .line 1133
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v1

    .line 1138
    :goto_1
    const-string v1, "Failed to get port information : "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public nativeGetVendorId()I
    .locals 2

    .line 1065
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->getVendorId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 1067
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get vendor id : "

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public nativeGetVersion()I
    .locals 2

    .line 1055
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->getCecVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 1057
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get cec version : "

    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public nativeInit()Ljava/lang/String;
    .locals 2

    .line 947
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public nativeIsConnected(I)Z
    .locals 2

    .line 1146
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->isConnected(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1148
    const-string p1, "Failed to get connection info : "

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return v0
.end method

.method public nativeSendCecCommand(II[B)I
    .locals 1

    .line 1011
    new-instance v0, Landroid/hardware/tv/hdmi/cec/CecMessage;

    invoke-direct {v0}, Landroid/hardware/tv/hdmi/cec/CecMessage;-><init>()V

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 1012
    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->initiator:B

    and-int/lit8 p1, p2, 0xf

    int-to-byte p1, p1

    .line 1013
    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->destination:B

    .line 1014
    iput-object p3, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->body:[B

    .line 1016
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, v0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->sendMessage(Landroid/hardware/tv/hdmi/cec/CecMessage;)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1018
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to send CEC message : "

    invoke-static {p2, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    return p0
.end method

.method public nativeSetHpdSignalType(II)V
    .locals 3

    .line 1156
    const-string v0, " to "

    const-string v1, "Could not set HPD signal type for portId "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    int-to-byte v2, p1

    invoke-interface {p0, v2, p2}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->setHpdSignal(BI)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 1162
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1158
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 1160
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1158
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public nativeSetLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1102
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1104
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to set language : "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 4

    .line 994
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    const/4 v0, 0x0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;

    invoke-direct {v2, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    invoke-interface {v1, v2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->setCallback(Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 999
    const-string v2, "Couldn\'t initialise tv.cec callback : "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1003
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    invoke-interface {p0, v1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->setCallback(Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1005
    const-string p1, "Couldn\'t initialise tv.hdmi callback : "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
