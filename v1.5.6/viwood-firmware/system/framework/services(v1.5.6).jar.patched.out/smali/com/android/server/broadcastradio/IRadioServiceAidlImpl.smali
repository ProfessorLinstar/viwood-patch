.class public final Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "IRadioServiceAidlImpl.java"


# static fields
.field public static final SERVICE_NAMES:Ljava/util/List;


# instance fields
.field public final mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

.field public final mService:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/amfm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dab"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-direct {v0, p2, p3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;-><init>(Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    .line 75
    const-string p0, "Initialize BroadcastRadioServiceAidl(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "BcRadioSrvAidl"

    invoke-static {p2, p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getServicesNames()Ljava/util/ArrayList;
    .locals 4

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_0
    sget-object v2, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .line 140
    const-string v0, "BcRadioSrvAidl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 3

    .line 107
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BcRadioSrvAidl"

    const-string v2, "Adding announcement listener for %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 114
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump AIDL BroadcastRadioService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 127
    const-string p2, "BroadcastRadioService\n"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    const-string p2, "AIDL HAL client:\n"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 133
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 134
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 136
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public listModules()Ljava/util/List;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 88
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->listModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 3

    .line 94
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BcRadioSrvAidl"

    const-string v2, "Opening module %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    if-eqz p4, :cond_1

    .line 101
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    return-object p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
