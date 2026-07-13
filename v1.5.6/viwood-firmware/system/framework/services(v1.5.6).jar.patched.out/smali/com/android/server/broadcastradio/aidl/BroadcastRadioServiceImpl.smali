.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;
.super Ljava/lang/Object;
.source "BroadcastRadioServiceImpl.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mModules:Landroid/util/SparseArray;

.field public mNextModuleId:I

.field public final mServiceListener:Landroid/os/IServiceCallback$Stub;

.field public final mServiceNameToModuleIdMap:Ljava/util/Map;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModules(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserController(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Lcom/android/server/broadcastradio/RadioServiceUserController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNextModuleId(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "BcRadioAidlSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Landroid/os/IServiceCallback$Stub;

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 151
    sget-boolean p2, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    const-string v1, "BcRadioAidlSrv"

    if-eqz p2, :cond_0

    .line 152
    sget-object p2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "Initializing BroadcastRadioServiceImpl %s"

    invoke-static {v1, v2, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 156
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Landroid/os/IServiceCallback$Stub;

    invoke-static {p2, v2}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 158
    const-string v3, "failed to register for service notifications for service %s"

    invoke-static {v1, p2, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 8

    .line 241
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "BcRadioAidlSrv"

    const-string v1, "Add AnnouncementListener with enable types %s"

    .line 243
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 242
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p2, v1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 247
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 248
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v4, :cond_1

    .line 250
    :try_start_1
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {v0, v4, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/aidl/RadioModule;[I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 253
    :try_start_2
    const-string v5, "BcRadioAidlSrv"

    const-string v6, "Announcements not supported for this module"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 258
    const-string p0, "BcRadioAidlSrv"

    const-string p1, "There are no HAL modules that support announcements"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    .line 256
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    const-string v1, "Next module id available: %d\n"

    iget v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 271
    const-string v1, "ServiceName to module id map:\n"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 273
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 274
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    const-string v4, "Service name: %s, module id: %d\n"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 279
    const-string v1, "Radio modules [%d]:\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 281
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 282
    :goto_1
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 283
    const-string v1, "Module id=%d:\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 285
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 286
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 287
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 290
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public listModules()Ljava/util/List;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {v3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->getProperties()Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 173
    :cond_0
    monitor-exit v0

    return-object v1

    .line 174
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 2

    .line 206
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "BcRadioAidlSrv"

    const-string v1, "Open AIDL radio session"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_3

    .line 220
    iget-object p3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 221
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/broadcastradio/aidl/RadioModule;

    if-nez p0, :cond_1

    .line 223
    const-string p0, "BcRadioAidlSrv"

    const-string p2, "Invalid module ID %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 224
    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 226
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {p0, p4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/aidl/TunerSession;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 230
    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/aidl/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    :cond_2
    return-object p0

    .line 226
    :goto_0
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 216
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-audio sessions not supported with AIDL HAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_4
    const-string p0, "BcRadioAidlSrv"

    const-string p1, "Cannot open tuner on AIDL HAL client for non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot open session for non-current user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
