.class public Lcom/android/server/am/OomAdjusterModernImpl;
.super Lcom/android/server/am/OomAdjuster;
.source "OomAdjusterModernImpl.java"


# static fields
.field public static final ADJ_SLOT_VALUES:[I

.field public static final PROC_STATE_SLOTS:[I


# instance fields
.field public final mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

.field public final mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

.field public final mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

.field public final mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

.field public final mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAdjSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcStateSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smforEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 140
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    const/16 v0, 0x15

    .line 178
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 0

    .line 771
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    .line 670
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    .line 708
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 741
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    .line 765
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    .line 775
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    sget-object p3, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    array-length p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 777
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    sget-object p3, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    array-length p3, p3

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 779
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    return-void
.end method

.method public static adjToSlot(I)I
    .locals 2

    .line 165
    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-lt p0, v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-gt p0, v1, :cond_1

    .line 167
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :goto_0
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 175
    :cond_1
    array-length p0, v0

    goto :goto_0
.end method

.method public static forEachClientConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 8

    .line 1242
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1244
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 1245
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 1247
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1248
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    .line 1249
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1250
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-ltz v5, :cond_3

    .line 1251
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 1253
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_0

    goto :goto_3

    .line 1256
    :cond_0
    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    :goto_3
    if-eqz v7, :cond_2

    if-ne v7, p0, :cond_1

    goto :goto_4

    .line 1259
    :cond_1
    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1264
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_7

    .line 1266
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    .line 1267
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_6

    .line 1268
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 1269
    iget-object v4, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public static forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 7

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1189
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, -0x384

    const/4 v3, 0x2

    if-ltz v1, :cond_5

    .line 1190
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 1191
    invoke-virtual {v4, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1192
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, p0, :cond_4

    .line 1193
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1194
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-lt v6, v2, :cond_1

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1195
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    if-ltz v2, :cond_4

    :cond_1
    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1196
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1197
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1198
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v2, v3, :cond_4

    :cond_2
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1202
    :cond_3
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1205
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfSdkSandboxConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_9

    .line 1206
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 1207
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    if-eq v5, p0, :cond_8

    .line 1208
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1209
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-lt v6, v2, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1210
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-ltz v6, :cond_8

    :cond_6
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1211
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    if-gtz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1212
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1213
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v3, :cond_7

    goto :goto_4

    .line 1216
    :cond_7
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1219
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1220
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_d

    .line 1221
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v4

    .line 1222
    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c

    if-eq v5, p0, :cond_c

    .line 1223
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1224
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-lt v6, v2, :cond_a

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1225
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-ltz v6, :cond_c

    :cond_a
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1226
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    if-gtz v6, :cond_b

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1227
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1228
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v3, :cond_b

    goto :goto_6

    .line 1231
    :cond_b
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static processStateToSlot(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x13

    if-gt p0, v0, :cond_0

    return p0

    .line 206
    :cond_0
    sget-object p0, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->init(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 1103
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1105
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    invoke-static {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final computeConnectionsLSP()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 996
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 997
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1005
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)Z
    .locals 11

    .line 1169
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1170
    iget-object v3, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 1171
    iget-wide v5, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 1172
    iget v9, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v2, 0x3e9

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1174
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 1176
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->init(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1177
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-static {v1, p0}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachClientConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    .line 1178
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    iget-boolean p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return p0
.end method

.method public final fullUpdateLSP(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 934
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 935
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    .line 936
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v11

    .line 937
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v13, v4, v1

    .line 939
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v1, 0x0

    .line 941
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 942
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 945
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 946
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 948
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v15

    .line 949
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 950
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 951
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    .line 952
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    .line 953
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 954
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 956
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v7, :cond_0

    .line 957
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting update of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->reset()V

    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    move v6, v1

    move-object v1, v2

    const/16 v2, 0x3e9

    move v7, v6

    move-wide v5, v4

    const/4 v4, 0x1

    move v9, v7

    const/4 v7, 0x0

    move/from16 v16, v9

    move/from16 v9, p1

    .line 963
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 969
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v1, v16, -0x1

    move-wide v4, v5

    goto :goto_0

    :cond_2
    move-wide v5, v4

    .line 978
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 979
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide v4, v5

    const/16 v6, 0x3e9

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->update(Lcom/android/server/am/ProcessRecord;JIILcom/android/server/am/ActiveUids;Z)V

    move-wide v5, v4

    .line 980
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 982
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 983
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    move/from16 v1, p1

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    return-void
.end method

.method public getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    const/16 p0, 0x3e9

    return p0
.end method

.method public getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public final initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 3

    .line 1141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1143
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    .line 1144
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    .line 1146
    iput-object v1, p3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1147
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjusterModernImpl;->computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)Z

    .line 1152
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 801
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->unlinkProcessRecordFromList(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 810
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public final partialUpdateLSP(ILandroid/util/ArraySet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1025
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1026
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    .line 1027
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v10

    .line 1028
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v12, v4, v1

    .line 1030
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1031
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move-object v8, v2

    .line 1032
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/16 v6, 0x3e9

    const/4 v9, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->update(Lcom/android/server/am/ProcessRecord;JIILcom/android/server/am/ActiveUids;Z)V

    move-wide v3, v4

    .line 1034
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1036
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 1037
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    move-object/from16 v9, p2

    .line 1040
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 1041
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 1042
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1043
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 1048
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl;->collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V

    .line 1054
    iget-object v5, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v5}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 1055
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v5

    iget-object v7, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {v0, v1, v5, v7}, Lcom/android/server/am/OomAdjusterModernImpl;->initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1059
    iget-object v5, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v5}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 1061
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 1064
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    move v9, v7

    :goto_1
    if-ge v7, v5, :cond_3

    .line 1065
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1066
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1067
    iget v15, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1068
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v14

    const/16 v15, 0x2bc

    if-gt v15, v14, :cond_1

    .line 1071
    sget v15, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    :cond_1
    const/16 v15, 0x3e9

    if-ge v14, v15, :cond_2

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    .line 1080
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 1084
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    :goto_3
    if-ge v6, v1, :cond_6

    .line 1085
    invoke-virtual {v8, v6}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    .line 1086
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->reset()V

    .line 1087
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_4
    if-ltz v7, :cond_5

    .line 1088
    invoke-virtual {v5, v7}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 1089
    invoke-virtual {v0, v9}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    move/from16 v1, p1

    move-object v2, v8

    move-wide v5, v10

    move-wide v7, v12

    .line 1093
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 893
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 895
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 896
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    .line 898
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 899
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->fullUpdateLSP(I)V

    .line 903
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->performUpdateOomAdjPendingTargetsLocked(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 4

    .line 917
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 918
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 919
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OomAdjusterModernImpl;->partialUpdateLSP(ILandroid/util/ArraySet;)V

    .line 923
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 924
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 926
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 923
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public resetInternal()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 795
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    return-void
.end method

.method public unlinkProcessRecordFromList(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    .line 788
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public final updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    .line 843
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 845
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public final updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    .line 867
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 869
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method
